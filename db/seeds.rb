userArr =  [
    {
      "name": "Mark",
      "password": SecureRandom.hex,
      "desc": "Epstien's Personal Assistant",
      "age": 26,
      "image": "1.jpg"
    },
    {
      "name": "Joe",
      "password": SecureRandom.hex,
      "desc": "Prisoner at Federal Correctional Institution",
      "age": 35,
      "image": "2.jpg"
    },
    {
      "name": "Emily",
      "password": SecureRandom.hex,
      "desc": "Actress",
      "age": 35,
      "image": "3.jpg"
    },
    {
      "name": "Michael",
      "password": SecureRandom.hex,
      "desc": "Manager at Honeys",
      "age": 45,
      "image": "4.jpg"
    },
    {
      "name": "Dave",
      "password": SecureRandom.hex,
      "desc": "Dont ask",
      "age": 40,
      "image": "5.jpg"
    },
    {
      "name": "Zion",
      "password": SecureRandom.hex,
      "age": 29,
      "image": "6.jpg"
    },
    {
      "name": "Jenny",
      "password": SecureRandom.hex,
      "desc": "Actress",
      "age": 32,
      "image": "7.jpg"
    }
  ]

  userArr.each {|u| User.create(u)}