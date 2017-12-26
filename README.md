# Felina
### Hello reader (M. Dahane)
The app has been created in the timespan of roughly 4 hours, while taking the road to Casablanca, 
I have tried to finish the app early because - as you might know- exams are coming in next week, 
and I need to reserve time for that.<br/>
The Back-end part was made using Spring Boot.<br/>
The view however was initially thought to be made with Angular 4, but after a while I figured it's gonna take me time,
to create all components with the DataSource service... that's why I chose AngularJS (1.x)<br/>
I've  made a prototype of the Angular 4 app (Angular4Demo.jpg), then gave up 30min later, but I might finish that in the future.<br/>
### Application<br/>
The API was created using the `@ResponseBody` annotation to generate JSON-like syntax to be interpreted by Angular directives.
The server takes in a word, it would either add it to a Dictionary Collection, remove it from it,  or search for alikes, you choose !<br/>
If you hit "Send" without any words, you'll get a list of all phrases available in the collection.<br/>
I intentionally omitted Exception handling as I felt there is no need.

### How to run it
Please import it on Intellij, I don't know what it is with Eclipse, but it's going crazy.<br/>
Make sure you have an active internet connection for Icons to load properly.
Then just run it as a Spring Boot app.<br/>
#### ANY FEEDBACK IS HIGHLY APPRECIATED


