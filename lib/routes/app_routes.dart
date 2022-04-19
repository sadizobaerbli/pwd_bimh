import 'package:flutter/material.dart';
import 'package:pwd_bimh/pages/establishment_page.dart';
import 'package:pwd_bimh/pages/establishment_report.dart';
import 'package:pwd_bimh/pages/home.dart';
import 'package:pwd_bimh/pages/pending_establishment.dart';
import 'package:pwd_bimh/pages/view_establishment.dart';
import 'package:pwd_bimh/pages/add_establishment.dart';
import 'package:go_router/go_router.dart';
import 'package:pwd_bimh/routes/route_names.dart';

final router = GoRouter(
    routes: [
      GoRoute(
          name: homePage,
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: HomePage(),
            );
          }),
      GoRoute(
        name: establishmentPage,
        path: '/establishmentPage/:title',
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: EstablishmentPage(title: state.params['title']),
          );
        },
      ),
      GoRoute(
          name: viewEstablishmentPage,
          path: '/viewEstablishmentPage/:pwdId',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: ViewEstablishmentPage(
                pwdId: state.params['pwdId']!,
              ),
            );
          }),
      GoRoute(
          name: addEstablishmentPage,
          path: '/addEstablishment',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: AddEstablishment(),
            );
          }),
      GoRoute(
          name: pendingEstablishmentPage,
          path: '/pendingEstablishmentPage',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: PendingEstablishmentPage(),
            );
          }),
      GoRoute(
          name: establishmentReportPage,
          path: '/establishmentReportPage',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: EstablishmentReportPage(),
            );
          }),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      );
    });