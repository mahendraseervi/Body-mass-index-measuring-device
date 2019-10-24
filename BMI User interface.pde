char currentpage;
char selectedpage;
PImage bmi, next, firstback, home, back;
PFont f;


int currentstring = 0 ;
String current ="";
String wt="";
String ht="";
String age="";
int gender=3;
color  weightc=150;


color htc=150;
color agec=150;

int weightp;


void setup()
{
  size(320, 240);
  bmi=loadImage("bmi1.jpg");
  next=loadImage("next.png");
  home=loadImage("home.jpg");
  back=loadImage("back.png");
  firstback=loadImage("firstback.jpg");
  f=createFont("AdobeArabic-Bold", 18);
  currentpage='1';
  selectedpage='0';
}

void draw()
{

  if (currentpage=='1')
  {
    homepage();
    if (mouseX>240 && mouseX<300 && mouseY>190 && mouseY<220)
    {
      stroke(85, 18, 90);
      strokeWeight(3);
      noFill();
      rect( 240, 190, 59, 29, 15);
      image(next, 240, 190, 60, 30);
    }

    if (mousePressed && mouseX>240 && mouseX<300 && mouseY>190 && mouseY<220)
    {

      currentpage='3';
    }
  }

  //..................................removed page.................................................

  /* if (currentpage=='2')
   {
   secondpage();
   if (mouseX>30 && mouseX<70 && mouseY>10   && mouseY<50 )
   {
   stroke(85, 18, 90);
   strokeWeight(2);
   noFill();
   ellipse(50, 30, 40, 40);
   }
   if (mousePressed && mouseX>30 && mouseX<70 && mouseY>10   && mouseY<50 )
   {
   currentpage='1';
   }
   if (mouseX>120 && mouseX<180 && mouseY>190 && mouseY<220)
   {
   stroke(85, 18, 90);
   strokeWeight(2);
   noFill();
   rect( 120, 190, 60, 30, 15);
   }
   
   if (mousePressed && mouseX>120 && mouseX<180 && mouseY>190 && mouseY<220)
   {
   
   currentpage='3';
   }
   }    */
  //,..............................option page (auto / manual).................................

  if (currentpage=='3')
  {
    thirdpage();

    if (mouseX>30 && mouseX<70 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(50, 30, 40, 40);
    }
    if (mousePressed && mouseX>30 && mouseX<70 && mouseY>10   && mouseY<50 )
    {
      currentpage='1';
    }

    if (mouseX>70 && mouseX<250 && mouseY>90 && mouseY<130)
    {

      ellipse(55, 110, 10, 10);
      // rect(70, 90, 180, 40, 10);
    }

    if (mouseX>70 && mouseX<250 && mouseY>140 && mouseY<180)
    {
      ellipse(55, 160, 10, 10);
      //rect(70, 140, 180, 40, 10);
    }


    if (mousePressed && mouseX>70 && mouseX<250 && mouseY>90   && mouseY<130 )
    {
      currentpage='4';
    }

    if (mousePressed && mouseX>70 && mouseX<250 && mouseY>140 && mouseY<180)
    {
      currentpage='5';
    }
  }


  //..............................................manual page...........................................................


  if (currentpage=='4')
  {
    fourthpage();


    //float weightp = textWidth(wt);
    stroke(100);
    if (mousePressed && mouseX>=130 && mouseX<=180 && mouseY>=50 && mouseY<=85)
    {
      currentstring=1;
      current=wt;
    }

    // noFill();
    fill(weightc);
    rect(130, 50, 60, 25, 5);

    fill(0);
    stroke(0);
    if (currentstring==1)
    {
      wt= current;
      weightc=250;
      htc=150;
     
       agec=150;
    }

    noFill();
    textSize(12);
    text(wt, 135, 70);


    //....................................

    if (mousePressed && mouseX>=130 && mouseX<=180 && mouseY>=80 && mouseY<=105)
    {
      currentstring=2;
      current=ht;
    }

    // noFill();
    fill(htc);
    rect(130, 80, 60, 25, 5);

    fill(0);
    stroke(0);
    if (currentstring==2)
    {
      ht= current;
      htc=250;
      weightc=150;
       agec=150;
      
    }
    noFill();
    textSize(12);
    text(ht, 135, 100);




    //...................................................

    if (mousePressed && mouseX>=130 && mouseX<=180 && mouseY>=110 && mouseY<=135)
    {
      currentstring=3;
      current=age;
    }

    // noFill();
    fill(agec);
    rect(130, 110, 60, 25, 5);

    fill(0);
    stroke(0);
    if (currentstring==3)
    {
      age= current;
      agec=250;
      htc=150;
      weightc=150;
    }

    textSize(12);
    text(age, 135, 130);


    noFill();
    rect(130, 140, 25, 25, 5);
    noFill();
    rect(160, 140, 25, 25, 5);

    if (mousePressed && mouseX>=130 && mouseX<=155 && mouseY>=140 && mouseY<=165)         //male
    {
      gender=1;
      fill(150);
      rect(130, 140, 25, 25, 5);  //male
      noFill();
      rect(160, 140, 25, 25, 5);   //female
      agec=150;
      htc=150;
      weightc=150;
    }

    if (gender==1)
    {
      fill(150);
      rect(130, 140, 25, 25, 5);  //male
      noFill();
      rect(160, 140, 25, 25, 5);   //female
      agec=150;
      htc=150;
      weightc=150;
    }



    if (mousePressed && mouseX>=160 && mouseX<=185 && mouseY>=140 && mouseY<=165)          //female
    {
      gender=2;
      fill(151);
      rect(160, 140, 25, 25, 5);   //female
      noFill();
      rect(130, 140, 25, 25, 5);  //male
    }

    if (gender==2)
    {
      gender=2;
      fill(151);
      rect(160, 140, 25, 25, 5);   //female
      noFill();
      rect(130, 140, 25, 25, 5);  //male
      agec=150;
      htc=150;
      weightc=150;
    }



    if (mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )           // back button
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(270, 30, 40, 40);
    }
    if (mousePressed && mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
       wt="";
       ht="";
      age="";
      gender=3;
      current= "";
      currentpage='3';
      
    }
    if (mouseX>120 && mouseX<180 && mouseY>200 && mouseY<230)                  
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      rect( 120, 200, 60, 30, 15);
    }

    if (mousePressed && mouseX>120 && mouseX<180 && mouseY>200 && mouseY<230)
    {
      if(wt!="" && ht!="" && age!="" && gender<3 )
      {

      currentpage='6';
      }
    }
  }

  //....................................  AUTO VALUES....................................................................

  if (currentpage=='5')
  {
    fithpage();
    if (mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(270, 30, 40, 40);
    }
    if (mousePressed && mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      currentpage='3';
      
    }
    if (mouseX>120 && mouseX<180 && mouseY>200 && mouseY<230)
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      rect( 120, 200, 60, 30, 15);
    }

    if (mousePressed && mouseX>120 && mouseX<180 && mouseY>200 && mouseY<230)
    {

      currentpage='6';
    }
  }

  //.....................................   OPTIONS (FEATURES)  ............................................................

  if (currentpage=='6')                           
  {
    sixthpage();
    
    
    //println(wt);
    // println(ht);
    //println(age);
    // println(gender);
    
    if (mouseX>30 && mouseX<70 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(50, 30, 40, 40);
    }
    if (mousePressed && mouseX>30 && mouseX<70 && mouseY>10   && mouseY<50 )
    {
      currentpage='1';
       wt="";
       ht="";
      age="";
      gender=3;
      current= "";
    }


    if (mouseX>80 && mouseX<240 && mouseY>50 && mouseY<80)
    {
      ellipse(65, 65, 10, 10);
      //rect(80,50,160,30,10);   body mass index    
    }
    if (mouseX>80 && mouseX<240 && mouseY>90 && mouseY<120)
    {
      ellipse(65, 115, 10, 10);
      //rect(80,90,160,30,10);   fat percentage    
    }
    if (mouseX>80 && mouseX<240 && mouseY>130 && mouseY<160)
    {
      ellipse(65, 145, 10, 10);
      //rect(80,130,160,30,10);   bassal metabolism rate  
    }
    if (mouseX>80 && mouseX<240 && mouseY>170 && mouseY<200)
    {
      ellipse(65, 185, 10, 10);
      //rect(80,170,160,30,10);   water intake
    }




    if (mousePressed && mouseX>80 && mouseX<240 && mouseY>50 && mouseY<80)
    {
      currentpage='7';
      
    }
    if (mousePressed && mouseX>80 && mouseX<240 && mouseY>90 && mouseY<120)
    {
      currentpage='8';
    }
    if (mousePressed && mouseX>80 && mouseX<240 && mouseY>130 && mouseY<160)
    {
      currentpage='9';
    }
    if (mousePressed && mouseX>80 && mouseX<240 && mouseY>170 && mouseY<200)
    {
      currentpage='a';
    }
  }


  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, body mass index ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
  if (currentpage=='7')
  {
    seventhpage();
    float wtf= float(wt);
    float htf= float(ht);
    
    float finalht,i,a,b,bmi;
    int f= int(htf);
    
    i=(htf-f)*100;
    
    if(i<=100 && i>=0)
    {
      a=i/120;
      finalht= (f+a)/3.3;
      bmi=wtf/(finalht*finalht);
      text(bmi,130,70);
    text("kg/m",200,70);
    
    if(bmi<18.5)
    {
     text("You are underWeight", 35, 140); 
    }
    
    if(bmi>=18.5 && bmi<24.9)
    {
      text("You are Normal", 35, 140);
    }
    
    if(bmi>=24.9 && bmi<29.9)
    {
      text("You are overweight", 35, 140);
    }
    if(bmi>=29.9 )
    {
      text("You are obese", 35, 140);
    }
    
  }
  
  
    if(i>=11 && i<=12)
    {
      b=i/12;
      finalht= (f+b)/3.25;
      bmi=wtf/(finalht*finalht);
      text(bmi,130,70);
    text("kg/m",200,70);
    
     if(bmi<18.5)
    {
     text("You are underWeight", 35, 140); 
    }
    
    if(bmi>=18.5 && bmi<24.9)
    {
      text("You are Normal", 35, 140);
    }
    
    if(bmi>=24.9 && bmi<29.9)
    {
      text("You are overweight", 35, 140);
    }
    if(bmi>=29.9 )
    {
      text("You are obese", 35, 140);
    }
    
    
    }
   
    
    if (mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(270, 30, 40, 40);
    }
    if (mousePressed && mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      currentpage='6';
    }
  }


  //....................................... fat percentage ........................................................
  if (currentpage=='8')
  {
    eigthpage();
    
    float wtf= float(wt);
    float htf= float(ht);
    int agef= int(age);
    float fatper ;
    
    float finalht,i,a,b,bmi=0;
    int f= int(htf);
    
    i=(htf-f)*100;
    
    if(i<=100 && i>=0)
    {
      a=i/120;
      finalht= (f+a)/3.3;
      bmi=wtf/(finalht*finalht);
    }
    
     if(i>=11 && i<=12)
    {
      b=i/12;
      finalht= (f+b)/3.25;
      bmi=wtf/(finalht*finalht);
    }
    
    if(gender==1)
    {
      gender=1;
    }
    
    if(gender==2)
    {
      gender=0;
    }
    
    fatper=((1.20*bmi)+(0.23*agef)-(10.8*gender)-5.4);    
    
     text(fatper,130,70);
    text("%",200,70);
    
    if(gender==1)
    {
      if(fatper>=2 && fatper<=5)
      {
          text("Essential fat", 35, 140); 
      }
      if(fatper>5 && fatper<=13)
      {
          text("Athletes", 35, 140); 
      }
      if(fatper>13 && fatper<=17)
      {
          text("Fitness", 35, 140); 
      }
      if(fatper>17 && fatper<=24)
      {
          text("Average", 35, 140); 
      }
      if(fatper>24)
      {
          text("Obese", 35, 140); 
      }
      
    }
    
   
    if(gender==0)
    {
      if(fatper>=10 && fatper<=13)
      {
          text("Essential fat", 35, 140); 
      }
      if(fatper>13 && fatper<=20)
      {
          text("Athletes", 35, 140); 
      }
      if(fatper>20 && fatper<=24)
      {
          text("Fitness", 35, 140); 
      }
      if(fatper>24 && fatper<=31)
      {
          text("Average", 35, 140); 
      }
      if(fatper>31)
      {
          text("Obese", 35, 140); 
      }
      
    }
    
    
    
   
    if (mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(270, 30, 40, 40);
    }
    if (mousePressed && mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      currentpage='6';
    }
  }

  //.......................................... bassal metabloism rate ..............................................................

  if (currentpage=='9')
  {
    ninthpage();
    
    float wtf= float(wt);
    float htf= float(ht);
    int agef= int(age);
   
    float bmr=0; 
  
    if(gender==1)        //male
    {
     bmr=((10*wtf)+(6.25*htf)-(5*agef)+5);
      
    }
    
    if(gender==2)        //female
    {
      bmr=((10*wtf)+(6.25*htf)-(5*agef)-161);
    }
    
    
     text(bmr,130,70);
    text("J/(h.kg)",200,70);
    
    
    
    if (mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(270, 30, 40, 40);
    }
    if (mousePressed && mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      currentpage='6';
    }
  }


  //................................................ water intake ......................................................
  if (currentpage=='a')
  {
    tenthpage();
    if (mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      stroke(85, 18, 90);
      strokeWeight(2);
      noFill();
      ellipse(270, 30, 40, 40);
    }
    if (mousePressed && mouseX>250 && mouseX<290 && mouseY>10   && mouseY<50 )
    {
      currentpage='6';
    }
  }
}

void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (current.length() > 0) {
      current = current.substring(0, current.length()-1);
    }
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
    current = current + key;
  }
}





//  $$$$$$$$$$$$$$      home page       $$$$$$$$$$$$$  

void homepage()
{
  image(bmi, 0, 0, 320, 240);
  image(next, 240, 190, 60, 30);

  fill(#55125A);
  textFont(f);
  text("BODY MASS INDEX", 35, 100);
}


//       $$$$$$$$$$$$$$$$$$  second page        $$$$$$$$$ 

void secondpage()
{
  //background(#A09CBC);
  image(firstback, 0, 0, 320, 240);
  image(next, 120, 190, 60, 30);
  image(back, 30, 10, 40, 40);

  fill(#253450);
  textSize(14);
  text("Enter your options", 70, 70);
  text("Gender :", 10, 105);
  text("Age :", 40, 140);
  stroke(255);
}

//$$$$$$$$$$$$$$$$$$$$   third page         $$$$$$$$$$$$4

void thirdpage()
{

  image(firstback, 0, 0, 320, 240);
  //image(next,240,190,60,30);
  image(back, 30, 10, 40, 40);
  noFill();
  rect(70, 90, 180, 40, 10);
  rect(70, 140, 180, 40, 10);

  textSize(14);
  fill(#55125A);
  text("Enter your options", 70, 70);

  textSize(14);
  text("Manual", 125, 110);
  text("Auto", 135, 160);


  textSize(8);
  text("(Manual entry of height & weight)", 74, 123);
  text("(calculate using bmi machine)", 85, 173);
  fill(#B5E9F2);
}

//$$$$$$$$$$$$         fourthpage          $$$$$$$$$$$$$$

//   manual option
void fourthpage()
{
  textFont(f);
  image(firstback, 0, 0, 320, 240);

  image(firstback, 0, 0, 320, 240);
  image(next, 120, 200, 60, 30);
  image(back, 250, 10, 40, 40);


  fill(#55125A);
  textSize(14);
  text("Enter your data", 30, 30);

  fill(#5D3D3D);
  textSize(14);
  text("Weight  : ", 30, 70);
  text("Height  : ", 30, 100);
  text("Gender  : ", 30, 160);
  text("Age     : ", 30, 130);

  fill(#5D3D3D);
  textSize(12);
  text("Kg", 200, 70);
  text("ft.in", 200, 100);
  text("years", 200, 160);

  textSize(10);
  text("M", 137, 157);
  text("F", 167, 157);

  noFill();
  rect(130, 50, 60, 25, 5);
  rect(130, 80, 60, 25, 5);
  rect(130, 140, 25, 25, 5);  //male
  rect(160, 140, 25, 25, 5);   //female
  rect(130, 110, 60, 25, 5);
}


//$$$$$$$$$$$$$$$$$$$$ fith page $$$$$$$$$$$$$$$$$$$$$$$$$$

//    auto option
void fithpage()
{
  image(firstback, 0, 0, 320, 240);
  image(back, 250, 10, 40, 40);
  image(next, 120, 200, 60, 30);

  fill(#55125A);
  textSize(11);
  text("Your data are", 30, 40);

  textSize(14);
  text("Weight : 62 kg", 30, 80);
  text("Height : 5.8 ft", 30, 110);
  text("Gender : male ", 30, 140);
  text("Age    : 21 ", 30, 170);
}

//$$$$$$$$$$$$$$$$$$$$$$$ sixth page     $$$$$$$$$$$$$$$$$$$$4

void sixthpage()
{
  image(firstback, 0, 0, 320, 240);
  image(back, 30, 10, 40, 40);

  noFill();
  rect(80, 50, 160, 30, 10);
  rect(80, 90, 160, 30, 10);
  rect(80, 130, 160, 30, 10);
  rect(80, 170, 160, 30, 10);

  textSize(12);
  fill(#55125A);
  text("Body Mass Index", 90, 70);
  text("Fat Percentage", 90, 110);
  text("Metabolism Rate", 90, 150);
  text("Water intake", 90, 190);
  fill(#B5E9F2);
}

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


void seventhpage()
{
  image(firstback, 0, 0, 320, 240);
  image(back, 250, 10, 40, 40);
  textSize(13);

  fill(#55125A);
  text("Body Mass Index :", 25, 40);
  text("Category :", 25, 110);

  textSize(12);
  fill(#900303);
  text("BMI value : ", 35, 70);
  
  //text("( Gain 6Kg more to come under ", 35, 160);
  //text("fit category )", 35, 180);
}

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

void eigthpage()
{
  image(firstback, 0, 0, 320, 240);
  image(back, 250, 10, 40, 40);
  textSize(14);

  fill(#55125A);
  text("Fat percentage :", 25, 40);
  text("Category :", 25, 110);

  textSize(12);
  fill(#900303);
  text("Fat% valve : ", 35, 70);
 // text("You are average", 35, 140);
 
}

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

void ninthpage()
{
  image(firstback, 0, 0, 320, 240);
  image(back, 250, 10, 40, 40);
  textSize(14);
  fill(#55125A);
  text("Metabolism Rate :", 25, 40);
  // text("Category :",25,110);

  textSize(12);
  fill(#900303);
  text("BMR value :", 35, 70);
  // text("You are average",35,140);
  // text("( Gain 6Kg more to come under ",35,160);
  //text("fit category )",35,180);}
}

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

void tenthpage()
{
  image(firstback, 0, 0, 320, 240);
  image(back, 250, 10, 40, 40);
  textSize(14);


  fill(#55125A);
  text("Water Intake :", 25, 40);
 // text("Category :", 25, 110);

  textSize(12);
  fill(#900303);
  text("Water Intake : 8 glasses per day", 35, 70);
  // text("You are average",35,140);
  // text("( Gain 6Kg more to come under ",35,160);
  
 
}
