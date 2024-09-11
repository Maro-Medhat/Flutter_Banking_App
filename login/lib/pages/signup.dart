import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(_updateFocusState);
    _passwordFocusNode.addListener(_updateFocusState);
    _confirmPasswordFocusNode.addListener(_updateFocusState);
  }

  @override
  void dispose() {
    _emailFocusNode.removeListener(_updateFocusState);
    _passwordFocusNode.removeListener(_updateFocusState);
    _confirmPasswordFocusNode.removeListener(_updateFocusState);

    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  void _updateFocusState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff4f62bf),
                    offset: Offset(-30, 0),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xff8de0eb),
              ),
            ),
            const Text("Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 30),
            // Email TextFormField
            TextFormField(
              focusNode: _emailFocusNode,
              decoration: InputDecoration(
                labelText: "Email Address",
                floatingLabelStyle: TextStyle(
                  color: _emailFocusNode.hasFocus
                      ? const Color(0xff559aff)
                      : Colors.grey,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff559aff)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            /* --------------------------------- */
            const SizedBox(height: 40),
            /* --------------------------------- */
            // Password TextFormField
            TextFormField(
              focusNode: _passwordFocusNode,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                labelText: "Password",
                floatingLabelStyle: TextStyle(
                  color: _passwordFocusNode.hasFocus
                      ? const Color(0xff559aff)
                      : Colors.grey,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff559aff)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            /* --------------------------------- */
            const SizedBox(height: 40),
            /* --------------------------------- */
            // Confirm Password TextFormField
            TextFormField(
              focusNode: _confirmPasswordFocusNode,
              obscureText: _obscureConfirmPassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: _toggleConfirmPasswordVisibility,
                ),
                labelText: "Confirm Password",
                floatingLabelStyle: TextStyle(
                  color: _confirmPasswordFocusNode.hasFocus
                      ? const Color(0xff559aff)
                      : Colors.grey,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff559aff)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            /* --------------------------------- */
            const SizedBox(height: 60),
            /* --------------------------------- */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff4f62bf),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 65.0,
                        vertical: 16.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: const Text("Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            /* --------------------------------- */
            const SizedBox(height: 50),
            /* --------------------------------- */
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 40),
                Expanded(child: Divider(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'or',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey)),
                SizedBox(width: 40),
              ],
            ),
            /* --------------------------------- */
            const SizedBox(height: 30),
            /* --------------------------------- */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset("assets/images/google.png",
                      width: 50, height: 50),
                  onPressed: () {},
                ),
                /* --------------------------------- */
                const SizedBox(width: 60),
                /* --------------------------------- */
                IconButton(
                  icon: Image.asset("assets/images/facebook.png",
                      width: 50, height: 50),
                  onPressed: () {},
                ),
              ],
            )
          ])),
    ));
  }
}
