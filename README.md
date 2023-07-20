
# Som-Seat Application

Som Seat is Flutter Application. In this application we can select our desired train seats. It has a very clean UI for selection of seat. And a search bar to search the particular seat. 

The Application consist of 3- screen. First is a Splash Screen , second one is is seat selection page and last one is final seat display.

### State Managment

For State Managment in this application I have use provider package. In this project I have create one provider which is providing the the functions of adding the seat in a list , removing the seat from the list and checking weather seat is present in the list or not. I have created two consumer which are using our provider functions.

### Logic Used

I have used simple Logic to generated seat numbers according to their berth type (refrence taken from :- Where is My Train App). 

Let's take an random seatNumber.  

seatNumber%8 = refrenceSeatNumber   

if refrenceSeatNumber == 1 || 4         
    then seat is Lower Berth.    

if refrenceSeatNumber == 2 || 5                     
    then seat is Middle Berth        

if refrenceSeatNumber == 3 || 6       
    then seat is Upper Berth

if refrenceSeatNumber == 7      
    then seat is Side Lower

if refrenceSeatNumber == 8      
    then seat is Side Upper    




 








## Run Locally

Clone the project

```bash
  git clone https://github.com/someshwar16/SomSeat.git
```

Install dependencies

```bash
  flutter pub get 
```

Start an Andorid Emulator 



Then run the main.dart

```bash
flutter run 
```




## Screenshots



