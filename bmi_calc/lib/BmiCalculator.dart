import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('BMI Calculator '),
      ),
      body: Column(
        children: [


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(

                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        children: [
                          Image(image: NetworkImage('data:image/png;base64,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',
                          ),
                            width: 90,
                            height: 90,
                          ),
                          Text('male',
                          style: TextStyle(
                            fontSize: 40.0,

                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(

                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        children: [
                          Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG9ph9glALr_eVtpfpP1GEEP09__1J40eIRQ&usqp=CAU'),
                          height: 90,
                            width: 90,
                          ),
                          Text('female',
                            style: TextStyle(
                              fontSize: 40.0,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

          ),
          Expanded(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                        Text('180',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                        SizedBox(width: 4,),
                        Text('CM',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                      ],),
                      Slider(
                          value: 120.0,
                          max: 220,
                          min: 80,
                          onChanged: (value){
                            print(value.round());
                          })
                    ],
                  ),

                ),
              ),),

          Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Expanded(
                        child: Container(

                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('Age',
                               style: TextStyle(
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.w900,
                               ),
                               ),
                               Text('18',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                              ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){},
                                  mini: true,  //to minimize remove icon size
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  ),
                                  FloatingActionButton(onPressed: (){},
                                    mini: true,  //to minimize remove icon size
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  )
                                ],
                              ),
                            ],
                  ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Age',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text('18',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){},
                                    mini: true,  //to minimize remove icon size
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(onPressed: (){},
                                    mini: true,  //to minimize remove icon size
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                      ),
                    ],
            ),
               ),),
          Container(
           width: double.infinity,
           color: Colors.pink,
           child: MaterialButton(
             onPressed: (){},
             child:Text('CALCULATE'),),
         )
        ],
      ),
    );
  }
}
