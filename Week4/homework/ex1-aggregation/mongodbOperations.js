const { MongoClient } = require("mongodb");
require("dotenv").config();

// Function to retrieve total population for a given Country per year
const getCountryPopulationByYear = async (country) => {
  const client = new MongoClient(process.env.MONGODB_URL);
  await client.connect();

  const database = client.db("databaseWeek4");
  const collection = database.collection("population_data");

  const result = await collection.aggregate([
    {
      $match: { Country: country }
    },
    {
      $group: {
        _id: "$Year",
        countPopulation: {
          $sum: { $add: ["$M", "$F"] }
        }
      }
    },
    {
      $sort: { _id: 1 } 
    }
  ]).toArray();

  client.close();
  return result;
};

// Function to retrieve continent information for a given Year and Age field
const getContinentInformationByYearAndAge = async (year, age) => {
  const client = new MongoClient(process.env.MONGODB_URL);
  await client.connect();

  const database = client.db("databaseWeek4");
  const collection = database.collection("population_data");

  const result = await collection.aggregate([
    {
      $match: { Year: year, Age: age }
    },
    {
      $addFields: {
        TotalPopulation: { $add: ["$M", "$F"] }
      }
    },
    {
      $sort: { _id: 1 } 
    }
  ]).toArray();

  client.close();
  return result;
};

// Sample calls to the functions
getCountryPopulationByYear("Netherlands").then((result) => {
  console.log("Population by year for Netherlands:");
  console.log(result);
});

getContinentInformationByYearAndAge(2020, "100+").then((result) => {
  console.log("Continent information for 2020 and Age 100+:");
  console.log(result);
});