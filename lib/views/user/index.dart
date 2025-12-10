import 'package:readindex/utils/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:restart_app/restart_app.dart';

import '../../../../api/article_api.dart';
import '../../../../api/user_api.dart';
import '../../../../cubit/user_cubit.dart';
import '../../../../models/article.dart';
import '../../../../models/user.dart';
import '../../../../utils/color.dart';
import '../../../component/htmlview_page.dart';
import '../../utils/http_client.dart';
import '../../../../utils/global_shared_state.dart';

class UserCenterPage extends StatefulWidget {
  const UserCenterPage({Key? key}) : super(key: key);

  @override
  State<UserCenterPage> createState() => _UserCenterPage();
}

class _UserCenterPage extends State<UserCenterPage> {
  Future<StandardResponseBody<Article>>? _termOfUseArticle;
  Future<StandardResponseBody<Article>>? _privacyArticle;

  Widget? alertWidget;
  bool _showBlur = false;
  @override
  void initState() {
    _termOfUseArticle = ArticleApi.getCmsArticle(code: 'agreement');
    _privacyArticle = ArticleApi.getCmsArticle(code: 'privacy');
    super.initState();
  }

  _buildMenuItem(
    String title, {
    IconData? icon,
    void Function()? onTap,
    Widget? trailing,
    void Function()? onLongPress,
  }) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 13.w,
          leading: icon != null
              ? Icon(
                  icon,
                  size: 18.w,
                )
              : null,
          title: Text(
            title,
            style: TextStyle(fontSize: 10.sp, color: HexColor('#1B1B1B')),
          ),
          onTap: onTap,
          onLongPress: onLongPress,
          minVerticalPadding: 0,
          trailing: trailing ?? Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.only(
            left: 6.w,
            top: 0,
            bottom: 0,
            right: 4.w,
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    setState(() {
      _showBlur = true;

      alertWidget = GFAlert(
        width: MediaQuery.of(context).size.width * 0.7,
        alignment: Alignment.center,
        backgroundColor: Colors.white,
        subtitle:
            'After deleting your account, you will not be able to log in again.'
                .g11n('Set_DeleteAccountTitle'),
        subtitleTextStyle:
            TextStyle(fontSize: 14.sp, color: HexColor('#1B1B1B')),
        type: GFAlertType.rounded,
        bottomBar: Padding(
          padding: EdgeInsets.only(top: 12.w),
          child: Column(
            children: [
              GFButton(
                onPressed: () async {
                  setState(() {
                    alertWidget = null;
                    _showBlur = false;
                  });
                  try {
                    EasyLoading.show(
                      status: 'Requesting...'.g11n('App_Requesting'),
                    );
                    await UserApi.deleteUser();
                    await GlobalSharedState.setToken('');
                    await context.read<UserInfoCubit>().refreshUserInfo();
                    EasyLoading.showToast(
                      'Delete Account Success'.g11n('Set_DeleteAccountSuccess'),
                    );
                    await Future.delayed(Duration(seconds: 1));
                    Restart.restartApp();
                  } catch (e) {
                    // EasyLoading.showError(e.message ?? '');
                    EasyLoading.dismiss();
                  } finally {
                    EasyLoading.dismiss();
                  }
                },
                borderSide: BorderSide(
                  color: HexColor('#f5c993'),
                  width: 1.w,
                ),
                blockButton: true,
                color: Colors.transparent,
                size: GFSize.LARGE,
                shape: GFButtonShape.pills,
                child: Text(
                  'Confirm'.g11n('App_Confirm'),
                  style: TextStyle(
                    color: HexColor('#f5c993'),
                  ),
                ),
              ),
              GFButton(
                onPressed: () {
                  setState(() {
                    alertWidget = null;
                    _showBlur = false;
                  });
                },
                borderSide: BorderSide(
                  color: HexColor('#f5c993'),
                  width: 1.w,
                ),
                blockButton: true,
                size: GFSize.LARGE,
                shape: GFButtonShape.pills,
                color: HexColor('#f5c993'),
                child: Text(
                  'Cancel'.g11n('App_Cancel'),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        titleTextStyle: TextStyle(
          fontSize: 16.sp,
          color: HexColor('#1B1B1B'),
          fontWeight: FontWeight.bold,
        ),
        title: 'Are you sure to delete your account?'
            .g11n('Set_DeleteAccountContent'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFFloatingWidget(
        verticalPosition: 150,
        horizontalPosition: MediaQuery.of(context).size.width * 0.1,
        showBlurness: _showBlur,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.w),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            HexColor('#f5c993'),
                            HexColor('#f4b898'),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 10.w,
                      ),
                      child: BlocBuilder<UserInfoCubit, UserInfo>(
                        builder: (context, UserInfo userInfo) {
                          if (userInfo.userId == null) {
                            return Center(
                              child: CircularProgressIndicator(
                                  color: HexColor('#fb3870')),
                            );
                          }
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.r),
                                    color: HexColor('#f4b898'),
                                  ),
                                  padding: EdgeInsets.all(4.w),
                                  child: Image.asset(
                                    'assets/icon/avatar.png',
                                    width: 44.w,
                                    height: 44.w,
                                  ),
                                ),
                                SizedBox(height: 8.w),
                                Text(
                                  userInfo.nickname ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                // SizedBox(height: 8.w),
                                // BlocBuilder<WalletOverviewCubit,
                                //     WalletOverview>(
                                //   builder: (
                                //     context,
                                //     WalletOverview walletOverview,
                                //   ) {
                                //     return ClipRRect(
                                //       borderRadius: BorderRadius.circular(10),
                                //       child: Column(
                                //         children: [
                                //           // SizedBox(height: 5.w),
                                //           Row(
                                //             children: [
                                //               Expanded(
                                //                   flex: 5,
                                //                   child: Row(
                                //                       mainAxisAlignment:
                                //                           MainAxisAlignment
                                //                               .spaceBetween,
                                //                       children: [
                                //                         Expanded(
                                //                             child:
                                //                                 GestureDetector(
                                //                           onTap: () {
                                //                             // Navigator.of(
                                //                             //         context)
                                //                             //     .pushNamed(
                                //                             //         '/wallet/purchase_history',
                                //                             //         arguments: {
                                //                             //       'type':
                                //                             //           'coins',
                                //                             //     });
                                //                             Navigator.push(
                                //                               context,
                                //                               MaterialPageRoute(
                                //                                 builder:
                                //                                     (context) =>
                                //                                         PurchaseHistoryPage(
                                //                                   arguments: {
                                //                                     'type':
                                //                                         'coins'
                                //                                   },
                                //                                 ),
                                //                               ),
                                //                             );
                                //                           },
                                //                           child: Column(
                                //                             mainAxisAlignment:
                                //                                 MainAxisAlignment
                                //                                     .center,
                                //                             children: [
                                //                               Text(
                                //                                 '${(walletOverview.useableCoin ?? 0).toString()}',
                                //                                 maxLines: 1,
                                //                                 overflow:
                                //                                     TextOverflow
                                //                                         .ellipsis,
                                //                                 style:
                                //                                     TextStyle(
                                //                                   fontSize:
                                //                                       17.sp,
                                //                                   fontWeight:
                                //                                       FontWeight
                                //                                           .bold,
                                //                                   color: HexColor(
                                //                                       '#1B1B1B'),
                                //                                 ),
                                //                               ),
                                //                               SizedBox(
                                //                                   height: 2.w),
                                //                               Row(
                                //                                   mainAxisAlignment:
                                //                                       MainAxisAlignment
                                //                                           .center, // 水平居中
                                //                                   children: [
                                //                                     Text(
                                //                                       "Coins".g11n(
                                //                                           "ReadPage_ReaderCoins"),
                                //                                       style:
                                //                                           TextStyle(
                                //                                         fontSize:
                                //                                             12.sp,
                                //                                         color: HexColor('#1B1B1B')
                                //                                             .withOpacity(0.6),
                                //                                       ),
                                //                                     ),
                                //                                   ]),
                                //                             ],
                                //                           ),
                                //                         )),
                                //                         Expanded(
                                //                           child:
                                //                               GestureDetector(
                                //                             onTap: () {
                                //                               // Navigator.of(
                                //                               //         context)
                                //                               //     .pushNamed(
                                //                               //         '/wallet/purchase_history',
                                //                               //         arguments: {
                                //                               //       'type':
                                //                               //          type,
                                //                               //     });
                                //                               Navigator.push(
                                //                                 context,
                                //                                 MaterialPageRoute(
                                //                                   builder:
                                //                                       (context) =>
                                //                                           PurchaseHistoryPage(
                                //                                     arguments: {
                                //                                       'type':
                                //                                           'bonus'
                                //                                     },
                                //                                   ),
                                //                                 ),
                                //                               );
                                //                             },
                                //                             child: Column(
                                //                               mainAxisAlignment:
                                //                                   MainAxisAlignment
                                //                                       .center,
                                //                               children: [
                                //                                 Text(
                                //                                   '${(walletOverview.useableBonus ?? 0).toString()}',
                                //                                   style:
                                //                                       TextStyle(
                                //                                     fontSize:
                                //                                         17.sp,
                                //                                     fontWeight:
                                //                                         FontWeight
                                //                                             .bold,
                                //                                     color: HexColor(
                                //                                         '#1B1B1B'),
                                //                                   ),
                                //                                 ),
                                //                                 SizedBox(
                                //                                     height:
                                //                                         2.w),
                                //                                 Row(
                                //                                     mainAxisAlignment:
                                //                                         MainAxisAlignment
                                //                                             .center, // 水平居中
                                //                                     children: [
                                //                                       Text(
                                //                                         '${"Bonus".g11n("ReadPage_ReaderBonus")}',
                                //                                         style:
                                //                                             TextStyle(
                                //                                           fontSize:
                                //                                               12.sp,
                                //                                           color:
                                //                                               HexColor('#1B1B1B').withOpacity(0.6),
                                //                                         ),
                                //                                       ),
                                //                                     ]),
                                //                               ],
                                //                             ),
                                //                           ),
                                //                         ),
                                //                       ]))
                                //             ],
                                //           ),
                                //           SizedBox(height: 15.w),
                                //         ],
                                //       ),
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          BlocBuilder<UserInfoCubit, UserInfo>(
                            builder: (context, userInfo) {
                              return _buildMenuItem(
                                'Notifications'.g11n('Set_Notifications'),
                                onTap: () {},
                                trailing: GFToggle(
                                  enabledTrackColor: HexColor('#f5c993'),
                                  disabledThumbColor: Colors.white,
                                  disabledTrackColor: HexColor('#E9E9E9'),
                                  value: userInfo.isReceiveMessage ?? false,
                                  type: GFToggleType.ios,
                                  borderRadius: BorderRadius.circular(13.w),
                                  onChanged: (bool? value) {
                                    // context
                                    //     .read<UserInfoCubit>()
                                    //     .changeReceiveMessageSetting(value ?? true);
                                  },
                                ),
                              );
                            },
                          ),
                          BlocBuilder<UserInfoCubit, UserInfo>(
                            builder: (context, userInfo) {
                              return _buildMenuItem(
                                'AutoUnlock'.g11n('Set_AutoUnlock'),
                                onTap: () {},
                                trailing: GFToggle(
                                  enabledTrackColor: HexColor('#f5c993'),
                                  disabledThumbColor: Colors.white,
                                  disabledTrackColor: HexColor('#E9E9E9'),
                                  value: userInfo.isAutoUnlock ?? false,
                                  type: GFToggleType.ios,
                                  borderRadius: BorderRadius.circular(13),
                                  onChanged: (bool? value) {
                                    context
                                        .read<UserInfoCubit>()
                                        .changeAutoUnlockSetting(value ?? true);
                                  },
                                ),
                              );
                            },
                          ),
                          _buildMenuItem(
                            'Terms of Use'.g11n('Set_TermsOfUse'),
                            onTap: () async {
                              StandardResponseBody<Article> resp =
                                  await _termOfUseArticle!;
                              Article article = resp.data!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HtmlViewPage(
                                    arguments: {
                                      'title': article.title,
                                      'content': article.content
                                    },
                                  ),
                                ),
                              );
                            },
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: HexColor('#A8A8A8'),
                              size: 18.w,
                            ),
                          ),
                          _buildMenuItem(
                            'Privacy'.g11n('Set_Privacy'),
                            onTap: () async {
                              try {
                                final resp = await _privacyArticle;
                                debugPrint(resp!.data.toString());
                                if (resp!.data != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HtmlViewPage(
                                        arguments: {
                                          'title': resp!.data!.title,
                                          'content': resp.data!.content
                                        },
                                      ),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('无法加载隐私条款内容')));
                                }
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('加载失败: $e')));
                              }
                            },
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: HexColor('#A8A8A8'),
                              size: 18.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: _buildMenuItem(
                        'Delete My Account'.g11n('Set_DeleteAccount'),
                        onTap: () async {
                          _showDeleteDialog(context);
                        },
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: HexColor('#A8A8A8'),
                          size: 18.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        child: alertWidget,
      ),
    );
  }
}
