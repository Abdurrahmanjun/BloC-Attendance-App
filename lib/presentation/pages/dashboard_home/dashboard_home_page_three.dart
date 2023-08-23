import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' as nbutils;
import 'package:otaqu/common/utils/colors.dart';
import 'package:otaqu/common/utils/constants.dart';
import 'package:otaqu/presentation/pages/dashboard_home/components/hrm_diagram_card.dart';
import 'package:otaqu/presentation/pages/profile/profile_page.dart';

class DashboardHomePageThree extends StatefulWidget {
  const DashboardHomePageThree({super.key});

  @override
  State<DashboardHomePageThree> createState() => _DashboardHomePageThreeState();
}

class _DashboardHomePageThreeState extends State<DashboardHomePageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [navylight, navylight],
            ),
          ),
          child: SingleChildScrollView(
              child: SizedBox(
            child: Column(
              children: <Widget>[
                16.height,
                nbutils.appBarWidget(
                  "Hello Abdurrahmanjun",
                  titleWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Halo Abdurrahman Jun",
                        style: nbutils.boldTextStyle(size: 18, color: white),
                      ),
                      Text(
                        "Selamat pagi, selamat beraktifitas !",
                        style:
                            nbutils.secondaryTextStyle(color: white, size: 12),
                      )
                    ],
                  ).paddingOnly(top: 16, bottom: 16),
                  showBack: false,
                  elevation: 0,
                  actions: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/5110839/pexels-photo-5110839.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100.0)),
                        color: grey,
                        border: Border.all(
                          width: 2,
                          color: white.withOpacity(0.2),
                        ),
                      ),
                    ).paddingRight(16)
                  ],
                  color: Colors.transparent,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 24, bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: navyDark,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: grey.withOpacity(0.2),
                            offset: const Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 4),
                                  child: Column(
                                    children: <Widget>[
                                      const Row(
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '09:00',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: white,
                                                ),
                                              ),
                                              Text(
                                                'Waktu terakhir check-in',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ).paddingBottom(16),
                                      Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {
                                              var snackbar = const SnackBar(
                                                content: Text(
                                                    'Selamat, data berhasil ditambahkan.'),
                                                backgroundColor: infoGreen,
                                                margin: EdgeInsets.all(8),
                                                behavior:
                                                    SnackBarBehavior.floating,
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackbar);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: koswaraOrange),
                                              child: const Text(
                                                "CHECK OUT",
                                                style: TextStyle(
                                                  color: darkText,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ).paddingAll(16),
                                            ).paddingBottom(8),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 90,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(100.0)),
                                          border: Border.all(
                                              width: 2,
                                              color: Colors.grey.shade300),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.add_a_photo_outlined,
                                                color: Colors.grey.shade300)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                8.height,
                Container(
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: grey.withOpacity(0.5), blurRadius: 1.0),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Jumlah Sales',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    var snackbar = const SnackBar(
                                      content: Text(
                                          'Selamat, data berhasil ditambahkan.'),
                                      backgroundColor: infoGreen,
                                      margin: EdgeInsets.all(8),
                                      behavior: SnackBarBehavior.floating,
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackbar);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: koswaraOrange),
                                    child: const Text(
                                      "+ Tambah Sales Baru",
                                      style: TextStyle(
                                        color: darkText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ).paddingAll(8),
                                  ),
                                )
                              ],
                            ).paddingAll(16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 2,
                                      decoration: BoxDecoration(
                                        color: infoGreen.withOpacity(0.5),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(4.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, bottom: 2),
                                            child: Text(
                                              'Sales Aktif',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                letterSpacing: -0.1,
                                                color: grey.withOpacity(0.5),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              const SizedBox(
                                                width: 28,
                                                height: 28,
                                                child:
                                                    Icon(Icons.group_outlined),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4, bottom: 3),
                                                child: Text(
                                                  '17',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: darkerText,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4, bottom: 3),
                                                child: Text(
                                                  'Orang',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    letterSpacing: -0.2,
                                                    color:
                                                        grey.withOpacity(0.5),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 48,
                                      width: 2,
                                      decoration: BoxDecoration(
                                        color: infoRed.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, bottom: 2),
                                            child: Text(
                                              'Sales Non Aktif',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                letterSpacing: -0.1,
                                                color: grey.withOpacity(0.5),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              const SizedBox(
                                                width: 28,
                                                height: 28,
                                                child:
                                                    Icon(Icons.group_outlined),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4, bottom: 3),
                                                child: Text(
                                                  '8',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: darkerText,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, bottom: 3),
                                                child: Text(
                                                  'Orang',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    letterSpacing: -0.2,
                                                    color:
                                                        grey.withOpacity(0.5),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ).paddingOnly(
                                left: 16, right: 16, top: 4, bottom: 16),
                          ],
                        ),
                      ).paddingBottom(16),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: grey.withOpacity(0.5), blurRadius: 1.0),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Laporan Kehadiran',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ).paddingOnly(
                                left: 16, right: 16, top: 16, bottom: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                60.height,
                              ],
                            ).paddingOnly(
                                left: 16, right: 16, top: 4, bottom: 16),
                          ],
                        ),
                      ),
                    ],
                  ).paddingOnly(left: 16, right: 16, top: 32, bottom: 32),
                )
              ],
            ),
          ))),
    );
  }
}