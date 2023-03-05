import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:seventh_player/app/pages/login/widgets/custom_textfield.dart';
import 'package:seventh_player/app/pages/login/widgets/password_textfield.dart';
import 'package:seventh_player/app/pages/video/video_page.dart';
import 'package:seventh_player/core/data/stores/user_data_store.dart';
import 'package:seventh_player/core/data/stores/login_store.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seventh_player/core/utils/size_extensions.dart';

class LoginPage extends StatelessWidget {
  final LoginStore loginStore = GetIt.instance.get<LoginStore>();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Center(
          child: Observer(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Semantics(
                      label: AppLocalizations.of(context)!.logo,
                      child: const Image(
                        image: AssetImage('assets/image/logo.png'),
                      ),
                    ),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    CustomTextField(
                        labelText: AppLocalizations.of(context)!.username,
                        onChanged: loginStore.setUsername),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    PasswordTextField(
                      obscureText: loginStore.obscureText,
                      checkbox: loginStore.isCheckboxChecked,
                      labelText: AppLocalizations.of(context)!.password,
                      onChanged: loginStore.setPassword,
                      checkboxOnChanged: loginStore.setCheckbox,
                    ),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(375, 60),
                      ),
                      onPressed: () async {
                        await loginStore
                            .loginWithUsernamePassword(context)
                            .then(
                          (_) {
                            if (GetIt.instance.get<UserDataStore>().userModel !=
                                null) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) => const VideoPage(),
                                ),
                              );
                            }
                          },
                        );
                      },
                      child: Text(
                        AppLocalizations.of(context)!.login.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
