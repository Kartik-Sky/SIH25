import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:medichain/Pages/HistoryPage/Components/Prescriptions.dart';
import 'package:medichain/Pages/HistoryPage/Components/Tests.dart';
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int? _current_value=0;
  // bool positive = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            transform: Matrix4.skewX(-.2),
            child: CustomSlidingSegmentedControl(
              
            children: 
            {
              0: 
              Container(
                width: 80,
                transform: Matrix4.skewX(.2),
                alignment: Alignment.center,
                child: Text("Tests")
                ),
              1: 
              Container(
                width: 100,
                transform: Matrix4.skewX(.2),
                alignment: Alignment.center,
                child: Text("Prescriptions")
                ),
            }
            , 
            decoration: BoxDecoration(
              color: CupertinoColors.lightBackgroundGray,
              // borderRadius: BorderRadius.circular(20),
            ),
            
            thumbDecoration: BoxDecoration(
              color: (_current_value==0)?Color.fromARGB(255, 178, 246, 181):const Color.fromARGB(255, 154, 255, 157),
                // borderRadius: BorderRadius.circular(20)
                
              
            ),
            onValueChanged: 
              (v){
                setState(() {
                  _current_value=v;
                });
              }
            ),
          ),
          SizedBox(height: 30,),
          
          (_current_value==1)?
          Prescriptions()
          :
          Tests(),

          SizedBox(
            height: 100,
          )
          
        ],
      ),
    );
  }
}