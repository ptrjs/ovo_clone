
import 'package:flutter/material.dart';
import 'package:ovo_clone/core.dart';
import '../view/transfer_view.dart';

class TransferController extends State<TransferView> {
    static late TransferController instance;
    late TransferView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    