import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iotask/injectable_config.dart';
import 'package:iotask/src/core/styles/app_colors.dart';
import 'package:iotask/src/core/styles/dimensions.dart';
import 'package:iotask/src/core/styles/text_styles.dart';
import 'package:iotask/src/features/authentication/presentation/cubits/authentication_cubit/authentication_cubit.dart';
import 'package:iotask/src/features/authentication/presentation/cubits/authentication_cubit/authentication_state.dart';
import 'package:iotask/src/features/dashboard/presentation/views/dashboard_screen.dart';
import 'package:iotask/src/features/shared/widgets/styled_button.dart';
import 'package:iotask/src/features/shared/widgets/styled_textfield.dart';
import 'package:iotask/src/features/shared/widgets/vertical_gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocListener(
          bloc: getIt<AuthenticationCubit>(),
          listener: (context, state) {
            if (state is AuthenticationSetState) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.regular),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                      height: 20,
                    ),
                  ],
                ),
                const Spacer(),
                Center(
                  child: Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimensions.regular,
                      horizontal: Dimensions.large,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.borderGrey),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(Dimensions.small)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Sign In',
                          style: heading1,
                        ),
                        const VerticalGap(Dimensions.regular),
                        const Divider(height: 1, color: AppColors.borderGrey),
                        const VerticalGap(Dimensions.regular),
                        StyledTextField(
                          controller: _emailController,
                          labelText: 'Your email',
                          hintText: 'Enter your email',
                        ),
                        const VerticalGap(Dimensions.regular),
                        StyledTextField(
                          controller: _passwordController,
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          obscureText: true,
                        ),
                        const VerticalGap(Dimensions.regular),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? value) {},
                                ),
                                const Text('Remember me', style: text),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Recover password',
                                style: textSemiBold.copyWith(
                                  color: AppColors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const VerticalGap(Dimensions.regular),
                        SizedBox(
                          width: double.infinity,
                          child: BlocBuilder<AuthenticationCubit,
                              AuthenticationState>(
                            bloc: getIt<AuthenticationCubit>(),
                            builder: (context, state) {
                              return StyledButton(
                                onPressed: state.maybeWhen(
                                  pending: () => null,
                                  orElse: () => () {
                                    getIt<AuthenticationCubit>()
                                        .signInWithEmail(
                                            email: _emailController.text,
                                            password: _passwordController.text);
                                  },
                                ),
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: state.when(
                                    initial: () => Text(
                                      'Sign in',
                                      key: const ValueKey('sign_in'),
                                      style: textSemiBold.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    pending: () => const SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        key: ValueKey('loading'),
                                        color: Colors.white,
                                      ),
                                    ),
                                    set: (user) => const Icon(
                                      Icons.check,
                                      key: ValueKey('success'),
                                      color: Colors.white,
                                    ),
                                    error: (error) => const Icon(
                                      Icons.close,
                                      key: ValueKey('error'),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const VerticalGap(Dimensions.large),
                        Center(
                          child: Text(
                            'Sign in with social profiles',
                            style:
                                textSmall.copyWith(color: AppColors.textGrey),
                          ),
                        ),
                        const VerticalGap(Dimensions.regular),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.g_mobiledata),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.apple),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const VerticalGap(Dimensions.regular),
                        const Divider(height: 1, color: AppColors.borderGrey),
                        const VerticalGap(Dimensions.regular),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Don't have an account? Sign up here",
                              style: text,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      );
}
