import 'package:readindex/utils/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiver/strings.dart';

import '../../utils/color.dart';

typedef OnFocusCallback = void Function();
typedef OnClearSearch = void Function();
typedef OnSubmitCallback = void Function(String);

class SearchBar extends StatefulWidget {
  final OnFocusCallback? onFocus;
  final OnSubmitCallback? onSubmit;
  final OnClearSearch? onClear;
  final TextEditingController? controller;

  const SearchBar({
    Key? key,
    this.onFocus,
    this.onSubmit,
    this.controller,
    this.onClear,
  }) : super(key: key);

  @override
  createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final FocusNode _focusNode = FocusNode();
  final String _searchHintText = 'Search';
  String _searchText = '';
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      focusNode: _focusNode,
      onChanged: (String text) {
        setState(() {
          _searchText = text;
        });
      },
      onSubmitted: (String text) {
        if (widget.onSubmit != null) {
          widget.onSubmit?.call(_searchText);
        }
      },
      controller: controller,
      style: TextStyle(
        fontSize: 12.w,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        isDense: true,
        constraints: const BoxConstraints(),
        contentPadding: EdgeInsets.only(
          top: 8.w,
          bottom: 8.w,
        ),
        filled: true,
        hintText: _searchHintText.g11n('Discover_SearchHintText'),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: HexColor('#9E9E9E'),
        ),
        suffixIcon: isNotEmpty(controller.text)
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (widget.onClear != null) {
                      widget.onClear?.call();
                    }
                    controller.text = '';
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.w)),
                      color: HexColor('#FFFFFF'),
                    ),
                    padding: EdgeInsets.all(2.w),
                    child: Icon(
                      Icons.clear,
                      color: Colors.white,
                      size: 16.w,
                    ),
                  ),
                ),
              )
            : null,
        suffixIconConstraints: const BoxConstraints(),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Icon(
            Icons.search,
            size: 18.w,
            color: HexColor('#A8A8A8'),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(),
        fillColor: HexColor('#ffffff'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    if (widget.controller != null) {
      controller = widget.controller!;
    } else {
      controller = TextEditingController();
    }

    _focusNode.addListener(() {
      // print('focusNode: ${_focusNode.wasFocus}');
      if (_focusNode.hasFocus && widget.onFocus != null) {
        widget.onFocus?.call();
        _focusNode.unfocus();
      }
    });
  }
}
