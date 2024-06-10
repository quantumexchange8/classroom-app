import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/text_style.dart';
import 'package:flutter_application_1/login/loginAccount.dart';
import 'package:flutter_application_1/signUp/createNewAccount.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key, required this.title});

  final String title;

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  

  @override
  Widget build(BuildContext context) {
    

   
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/image3.jpeg"), fit: BoxFit.fill,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 500),
                  Text('Welcome to Classroom',
                  style: largeTitle,
                  ),
              
                  const SizedBox(height: 15,),
              
                  Text('Joint over 10,000 learners over the World and \n enjoy online education!', 
                  textAlign: TextAlign.center,
                  style: textWhite,
                  ),
                  
              
                  const SizedBox(height: 25,), 
              
                  SizedBox(
                    width:380, height:60,
                    child: FilledButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => createNewAccount()
                          ),
                        );
                      }, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)
                          ),
                          ),
                      ),
                      
                      child: const Text('Create an account', 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                      ),
                  ),
                    
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Already have an account?',
                          style: textWhite2,
                          ), 
                          
                        
                        TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => loginAccount(),
                              ),
                            );
                          }, 
                          child: Text('Log in',
                          style: fontWhite,
                          ),
                          ),
                      ],
                    ),
               
              
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
