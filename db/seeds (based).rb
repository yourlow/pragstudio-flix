# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Movie.create!([
  {
    title: "The Dark Knight",
    rating: "PG-13",
    total_gross: 1_004_558_444,
    description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    released_on: "2008-07-18"
  },
  {
    title: "Inception",
    rating: "PG-13",
    total_gross: 836_836_967,
    description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
    released_on: "2010-07-16"
  },
  {
    title: "Interstellar",
    rating: "PG-13",
    total_gross: 677_471_339,
    description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival as Earth becomes uninhabitable.",
    released_on: "2014-11-07"
  },
  {
    title: "The Lord of the Rings: The Return of the King",
    rating: "PG-13",
    total_gross: 1_140_682_011,
    description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
    released_on: "2003-12-17"
  },
  {
    title: "Parasite",
    rating: "R",
    total_gross: 258_659_532,
    description: "Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.",
    released_on: "2019-10-11"
  },
  {
    title: "Everything Everywhere All at Once",
    rating: "R",
    total_gross: 143_410_000,
    description: "An aging Chinese immigrant is swept up in an insane adventure, where she alone can save the world by exploring other universes connecting with the lives she could have led.",
    released_on: "2022-03-25"
  },
  {
    title: "Oppenheimer",
    rating: "R",
    total_gross: 952_000_000,
    description: "The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb during World War II.",
    released_on: "2023-07-21"
  },
  {
    title: "Dune",
    rating: "PG-13",
    total_gross: 402_027_353,
    description: "A noble family becomes embroiled in a war for control over the galaxy's most valuable asset while its heir becomes troubled by visions of a dark future.",
    released_on: "2021-10-22"
  },
  {
    title: "The Matrix",
    rating: "R",
    total_gross: 467_636_024,
    description: "A computer programmer discovers that reality as he knows it is a simulation created by machines, and joins a rebellion to free humanity.",
    released_on: "1999-03-31"
  },
  {
    title: "Mad Max: Fury Road",
    rating: "R",
    total_gross: 379_866_000,
    description: "In a post-apocalyptic wasteland, Max teams up with Furiosa to flee from cult leader Immortan Joe and his army in an armored truck.",
    released_on: "2015-05-15"
  }
])
