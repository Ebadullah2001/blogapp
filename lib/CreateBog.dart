import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:html_editor_enhanced/utils/callbacks.dart';
import 'package:html_editor_enhanced/utils/file_upload_model.dart';
import 'package:html_editor_enhanced/utils/options.dart';
import 'package:html_editor_enhanced/utils/plugins.dart';
import 'package:html_editor_enhanced/utils/shims/dart_ui.dart';
import 'package:html_editor_enhanced/utils/shims/dart_ui_fake.dart';
import 'package:html_editor_enhanced/utils/shims/dart_ui_real.dart';
import 'package:html_editor_enhanced/utils/shims/flutter_inappwebview_fake.dart';
import 'package:html_editor_enhanced/utils/toolbar.dart';
import 'package:html_editor_enhanced/utils/utils.dart';

class CreateBlog extends StatefulWidget {
  const CreateBlog({Key? key}) : super(key: key);

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  HtmlEditorController controller = HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Create Blog',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff111328),
        ),
        body: Container(
          color: const Color(0xff111328),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: HtmlEditor(
                  htmlToolbarOptions: const HtmlToolbarOptions(
                      textStyle: const TextStyle(color: Colors.white),
                      buttonColor: Colors.white,
                      toolbarType: ToolbarType.nativeGrid
                      //required to place toolbar anywhere!
                      //other options
                      ),
                  controller: controller, //required
                  htmlEditorOptions: const HtmlEditorOptions(
                    hint: "Your text here...",
                    //initalText: "text content initial, if any",
                  ),
                  otherOptions: const OtherOptions(
                    height: 700,
                  ),
                ),
              ),
              Container(
                  // alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  ))
            ],
          ),
        ));
  }
}
