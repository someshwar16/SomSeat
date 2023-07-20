
# Som-Seat Application

Som Seat is Flutter Application. In this application, we can select our desired train seats. It has a very clean UI for the selection of seats. And a search bar to search the particular seat. 

The Application consists of 3- screen. The first is a Splash Screen, the second one is the seat selection page and the last one is the final seat display.

### State Management

For State management in this application, I have used the provider package. In this project, I have created one provider which is providing the functions of adding the seat to a list, removing the seat from the list, and checking whether the seat is present in the list or not. I have created two consumers who are using our provider functions.

### Logic Used

I have used simple Logic to generate seat numbers according to their berth type (reference taken from:- Where is My Train App). 

Let's take a random seatNumber.  

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

![WhatsApp Image 2023-07-20 at 4 07 37 PM](https://github.com/someshwar16/SomSeat/assets/83568897/c0f6354c-398c-47b2-af0e-eedc8d94d1b0)

![WhatsApp Image 2023-07-20 at 4 07 38 PM](https://github.com/someshwar16/SomSeat/assets/83568897/143c760e-3bc6-41a5-a07f-a6a6e5ab3f0b)

![WhatsApp Image 2023-07-20 at 4 07 38 PM (1)](https://github.com/someshwar16/SomSeat/assets/83568897/930d3ea5-b5cd-4f9b-9c44-1c1dd60a21fa)

![WhatsApp Image 2023-07-20 at 4 07 39 PM](https://github.com/someshwar16/SomSeat/assets/83568897/4c86a112-0a30-449d-8e18-a5ebe92ccca3)

![WhatsApp Image 2023-07-20 at 4 07 39 PM (1)](https://github.com/someshwar16/SomSeat/assets/83568897/c8b13dd4-cd70-4cf1-ab4b-8ac4a1e83fdf)

![WhatsApp Image 2023-07-20 at 4 08 51 PM](https://github.com/someshwar16/SomSeat/assets/83568897/efb1a154-e5c1-4d93-bbda-2ba7d551625c)


