import 'package:flutter/material.dart';
import 'package:fvs/colors/AppColors.dart';
import 'package:fvs/constants/AssetsConstants.dart';
import 'package:fvs/constants/constants.dart';
import 'package:fvs/manage_money_flow/homescreen.dart';
import 'package:fvs/more/more_page.dart';
import 'package:fvs/payment/payment_page.dart';
import 'package:fvs/router/RouterConstants.dart';
import 'package:fvs/scan/scan_page.dart';
import 'package:fvs/statistic/statistic_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
//  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int i = 0;

  Widget currentScreen() {
    switch (i) {
      case 0:
        {
          return const HomeScreen();
        }
      case 1:
        {
          return const StatisticPage();
        }
      case 2:
        {
          return const ScanPage();
        }
      case 3:
        {
          return const PaymentPage();
        }
      case 4:
        {
          return const MorePage();
        }
      default:
        return const HomeScreen();
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        final arguments =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        i = arguments[Constants.dashboardPageOpen] as int;
        /* final CurvedNavigationBarState? navBarState =
            _bottomNavigationKey.currentState;
        navBarState?.setPage(i);*/
        setState(() {
          i;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 254),
      body: currentScreen(),
      floatingActionButton: FloatingActionButton(
        child: Image.asset(AssetsConstants.ScanLogo),
        mini: false,
        backgroundColor: Colors.transparent,
        // tooltip: 'Scan',
        onPressed: () {
          setState(() {
            //i=2;
            Navigator.pushNamed(context, RouterConstants.ScanPageRoute,
                arguments: {
                  // Constants.isComingForSetSchedule: false,
                  // Constants.isComingFromRecipientPage: false,
                  // Constants.isComingFromRecipientDetailsPage: false,
                });
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.all(0),
        notchMargin: 8,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 176, 176, 231),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(10) )
          ),
          
          height: 80,
          child: Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          i = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AssetsConstants.HomeLogo,
                              color: i == 0
                                  ? AppColors.navSelectedColor
                                  : AppColors.navDisableColor),
                          SizedBox(height: 2),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: i == 0
                                    ? AppColors.navSelectedColor
                                    : AppColors.navDisableColor,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          i = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AssetsConstants.StatisticLogo,
                              color: i == 1
                                  ? AppColors.navSelectedColor
                                  : AppColors.navDisableColor),
                          SizedBox(height: 2),
                          Text(
                            'Statistic',
                            style: TextStyle(
                                color: i == 1
                                    ? AppColors.navSelectedColor
                                    : AppColors.navDisableColor,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //right tabs

              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              //   child: Text(
              //     'Send',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         color: AppColors.navDisableColor,
              //         fontFamily: 'Inter',
              //         fontWeight: FontWeight.w400),
              //   ),
              // ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          i = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AssetsConstants.PaymentLogo,
                              color: i == 3
                                  ? AppColors.navSelectedColor
                                  : AppColors.navDisableColor),
                          SizedBox(height: 2),
                          Text('Payment',
                              style: TextStyle(
                                  color: i == 3
                                      ? AppColors.navSelectedColor
                                      : AppColors.navDisableColor,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          i = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AssetsConstants.MoreLogo,
                              color: i == 4
                                  ? AppColors.navSelectedColor
                                  : AppColors.navDisableColor),
                          SizedBox(height: 2),
                          Text(
                            'More',
                            style: TextStyle(
                                color: i == 4
                                    ? AppColors.navSelectedColor
                                    : AppColors.navDisableColor,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      /*  bottomNavigationBar: BottomNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.transparent,

        onTap: (index) {
          // Handle button tap
          setState(() {
            i = index;
          });
        },
      ),*/
    );
  }
}

