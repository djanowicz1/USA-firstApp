import 'package:flutter/material.dart'; 
import '../models/transaction.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    print('build() TransactionList');
    return transactions.isEmpty
        ? Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 230,
                  child: Image.asset(
                    'assets/fonts/images/waiting2.png',
                    fit: BoxFit.cover,
                  ),)
            ],
          )
        : ListView.builder(
            itemCount: transactions.length, shrinkWrap: true,
            itemBuilder: (context, index) {
              return TransactionItem(
                  transaction: transactions[index],
                  deleteTransaction: deleteTransaction);
            },
          );
  }
}
