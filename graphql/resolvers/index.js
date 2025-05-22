const db = require('../../database/db');

const resolvers = {
  Query: {
    getPublicationPoems: async () => {
      try {
        const [rows] = await db.raw('CALL get_publication_poems()');
        return rows;
      } catch (error) {
        console.error('Error ejecutando procedimiento:', error);
        throw new Error('No se pudo obtener los poemas de la publicación');
      }
    },

    getCustomers: async () => {
      try {
        const customers = await db('customer').select('*');
        return customers;
      } catch (error) {
        console.error('Error obteniendo clientes:', error);
        throw new Error('No se pudo obtener la lista de clientes');
      }
    }
  },

  Mutation: {
    // ALTAS
    createPoet: async (_, args) => {
      const [id] = await db('poet').insert(args);
      return { ...args, poet_code: id };
    },

    createPoem: async (_, args) => {
      const [id] = await db('poem').insert(args);
      return { ...args, poem_code: id };
    },

    createCustomer: async (_, args) => {
      const [id] = await db('customer').insert(args);
      return { ...args, customer_code: id };
    },

    createSale: async (_, args) => {
      const [id] = await db('sale').insert(args);
      return { ...args, sale_code: id };
    },

    // MODIFICACIONES
    updateCustomer: async (_, { customer_code, ...data }) => {
      await db('customer').where({ customer_code }).update(data);
      return { customer_code, ...data };
    },

    updatePublication: async (_, { publication_code, ...data }) => {
      await db('publication').where({ publication_code }).update(data);
      return { publication_code, ...data };
    },

    updateSale: async (_, { sale_code, ...data }) => {
      await db('sale').where({ sale_code }).update(data);
      return { sale_code, ...data };
    },

    // BAJAS
    deletePoemPublication: async (_, { poem_code, publication_code }) => {
      const deleted = await db('poem_publication')
        .where({ poem_code, publication_code })
        .del();
      return deleted > 0;
    },

    deleteSalePublication: async (_, { sale_code, publication_code }) => {
      const deleted = await db('sale_publication')
        .where({ sale_code, publication_code })
        .del();
      return deleted > 0;
    },
  }
};

module.exports = resolvers;
