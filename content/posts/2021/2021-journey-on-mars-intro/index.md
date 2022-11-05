---
draft: true
title: "Journey on Mars Intro"
date: 2021-11-30T19:43:41+01:00
tags: ["dev","architecture"]
cover:
    image: "cover.jpg"
    # can also paste direct link from external site
    # ex. https://i.ibb.co/K0HVPBd/paper-mod-profilemode.png
    alt: "<alt text>"
    caption: "nasa"
    relative: true # To use relative path for cover image, used in hugo Page-bundles
---


# Mars Rover

Explore Mars by sending remotely controlled vehicles to the surface of the planet. Control it with an API that translates the commands sent from earth to instructions that are understood by the rover.

## `:bulb:` Idea

### Problem
Given the initial starting point (x,y) of a rover and the direction (N,S,E,W) it is facing.

- The rover receives a character array of commands.
- Implement commands that move the rover forward/backward (f,b).
- Implement commands that turn the rover left/right (l,r).
- Implement obstacle detection before each move to a new square. 
- If a given sequence of commands encounters an obstacle, 
the rover moves up to the last possible point, aborts the sequence and reports the obstacle.
- Implement wrapping from one edge of the grid to another. (planets are spheres after all)
  
### Solution
Real world scenario (Rover + Control room)
todo image
...
todo
  
### Concetpual Architecture
![ConceptualArchitecture](https://github.com/samuele-cozzi/2021-MarsRover/blob/main/Utilities/MarsRoverArchitecture.svg)


### Argument to learn

- CQRS & EF
- Clean Architecture & DDD
- Queue Integration


## `:earth_africa:` Ecosystem

todo image

- Infrastructure
  - MSSQL ([Microsoft SQL Server](https://www.microsoft.com/it-it/sql-server/sql-server-downloads))
  - RabbitMQ ([RabbitMq](https://www.rabbitmq.com/))
  - seq ([aeq](https://datalust.co/seq))
  - Event Store ([GES](https://eventstore.com/))
  - Docker Compose ([Docker](https://www.docker.com/))
  
- Develop
  
  - .NET 6
  - EventFlow
  - Angular 12

## `:memo:` Features

### CQRS & EF
todo Image of sequence diagram

### Clean  Architecture & DDD in .NET   
todo Image of clean architecture
Many tanks to...

### Eventflow Concepts
- Aggregates
- Command bus and commands
- Event store
- In-memory, Entiy Framework read model.
- Integration
- Asynchronous subscriber


### Applications

- Control Room UI [app](http://localhost:5010/)
- Control Room API [swagger](http://localhost:5000/swagger)
- Control Room API [hangfire](http://localhost:5000/hangfire)

#### Control Room UI

#### Control Room API

#### Rover



## `:raised_hands:` Many Thanks To
- [Angular Tutorial](https://angular.io/tutorial)
- [Event Flow Docs](https://docs.geteventflow.net/GettingStarted.html)
- [Event Flow Github](https://github.com/eventflow/EventFlow)

### References
- [EventFlow](https://eventflow.net/)

