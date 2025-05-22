const { gql } = require('apollo-server');

const typeDefs = gql`
  type PublicationPoem {
    publication_code: Int
    publication_title: String
    price: Float
    poem_code: Int
    poem_title: String
    poem_contents: String
    poet_first_name: String
    poet_surname: String
  }

  type Poet {
    poet_code: Int
    first_name: String
    surname: String
    address: String
    postcode: String
    telephone_number: String
  }

  type Poem {
    poem_code: Int
    poem_title: String
    poem_contents: String
    poet_code: Int
  }

  type Customer {
    customer_code: Int
    first_name: String
    surname: String
    address: String
    postcode: String
    telephone_number: String
  }

  type Sale {
    sale_code: Int
    date: String
    amount: Float
    customer_code: Int
  }

  type Query {
    getPublicationPoems: [PublicationPoem]
    getCustomers: [Customer] # ← Agregada
  }

  type Mutation {
    createPoet(first_name: String!, surname: String!, address: String, postcode: String, telephone_number: String): Poet
    createPoem(poem_title: String!, poem_contents: String!, poet_code: Int!): Poem
    createCustomer(first_name: String!, surname: String!, address: String, postcode: String, telephone_number: String): Customer
    createSale(date: String!, amount: Float!, customer_code: Int!): Sale

    updateCustomer(customer_code: Int!, first_name: String, surname: String, address: String, postcode: String, telephone_number: String): Customer
    updatePublication(publication_code: Int!, title: String, price: Float): PublicationPoem
    updateSale(sale_code: Int!, date: String, amount: Float, customer_code: Int): Sale

    deletePoemPublication(poem_code: Int!, publication_code: Int!): Boolean
    deleteSalePublication(sale_code: Int!, publication_code: Int!): Boolean
  }
`;

module.exports = typeDefs;
