Feature: welcome to karate

  Scenario: how to print
    Given print "Hello World"
    When print 'another print'
    Then print 'then print'

  Scenario: more printing
    Given print 'some words to print'
    * print 'my name is','karate kid'

      # , --> concat two strings +1 white space
    * print 2+2


  Scenario: variables
    * def name = 'Mike'
    * print 'my name is' + name
    * def age = 20
    * print name, 'is', age,'years old'


  Scenario: difficult parameters: json object
    * def student = {'name': 'sam','owes_tuition':false}
    * print student.name
    * print student.owes_tuition


  Scenario: json object 2
    * def student =
    """
    {
    "firstname":"Steven",
    "lastname":"King",
    "salary": 2099
    }
    """
    * print student.salary
    * print student.firstname


  Scenario:  Spartan Variable
    * def spartan =
    """
    {
    "id": 10,
    "gender": "Female",
    "phone": 28388339
    }
    """
    * print spartan.gender
    * print spartan.phone
    * print spartan. name
    * print spartan.id


  @wip
  Scenario:  json array objects
    * def students =
    """
    [
      {
    'name': 'sam',
    'owes_ tuition':false
      },
      {
    'name': 'mike',
    'owes_tuition':true
      }
    ]
    """

    * print students
    * print students[0].name
    * print students[1].owes_tuition

