# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


quiz = Quiz.create({name: "third Quiz", questions_attributes: [{statement: "first s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "second s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "third s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "fourth s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "fifth s", choices_attributes: [{statement: "first choice"},{},{}]}]})

quiz = Quiz.create({name: "fourth Quiz", questions_attributes: [{statement: "first s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "second s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "third s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "fourth s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "fifth s", choices_attributes: [{statement: "first choice"},{},{}]}]})

quiz = Quiz.create({name: "fifth Quiz", questions_attributes: [{statement: "first s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "second s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "third s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "fourth s", choices_attributes: [{statement: "first choice"},{},{}]},
                                                               {statement: "fifth s", choices_attributes: [{statement: "first choice"},{},{}]}]})
