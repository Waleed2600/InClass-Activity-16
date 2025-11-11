import 'package:flutter/material.dart';
import '../widgets/register_email_section.dart';
import '../widgets/email_password_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Auth Demo'),
        elevation: 2,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.login),
              text: 'Sign In',
            ),
            Tab(
              icon: Icon(Icons.person_add),
              text: 'Register',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          SingleChildScrollView(
            child: EmailPasswordForm(),
          ),
          SingleChildScrollView(
            child: RegisterEmailSection(),
          ),
        ],
      ),
    );
  }
}