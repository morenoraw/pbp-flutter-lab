import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';


class TambahBudgetPage extends StatefulWidget {
  const TambahBudgetPage({super.key});

  final String title = "Tambah Budget";

  @override
  State<TambahBudgetPage> createState() => _TambahBudgetPageState();
}

class _TambahBudgetPageState extends State<TambahBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String _judulBudget = "";
  int _nominalBudget = 0;
  String _tipeBudget = "Pilih Tipe";
  List<String> tipeBudget = ['Pilih Tipe','Pengeluaran', 'Pemasukan'];
  TextEditingController tanggalInput = TextEditingController();

  @override
  void initState() {
    tanggalInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: const DrawerComponents(currentPage: "Tambah Budget"),
      body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Makanan",
                          labelText: "Judul",
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _judulBudget = value!;
                          });
                        },
                        // Validator as form validation
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Judul tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            child: Padding(
                          // Using padding of 8 pixels
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                            decoration: const InputDecoration(
                              hintText: "Nominal",
                              labelText: "Nominal",
                            ),
                            // Added behavior when name is typed
                            onChanged: (String? value) {
                              setState(() {
                                _nominalBudget = value == null
                                    ? 0
                                    : value.isNotEmpty
                                        ? int.parse(value)
                                        : 0;
                              });
                            },
                            // Validator as form validation
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Nominal tidak boleh kosong!';
                              }
                              return null;
                            },
                          ),
                        )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonFormField(
                              hint: const Text("Pilih Tipe"),
                              value: _tipeBudget,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: tipeBudget.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  _tipeBudget = value ?? "";
                                });
                              },
                              validator: (String? value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value == "Pilih Tipe") {
                                  return 'Tipe tidak boleh kosong!';
                                }
                                return null;
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: tanggalInput,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.calendar_today_rounded),
                              labelText: "Masukkan Tanggal"),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099),
                            );

                            if (pickedDate != null) {
                              setState(() {
                                tanggalInput.text =
                                    DateFormat('dd-MM-yyyy').format(pickedDate);
                              });
                            }
                          },
                        ))
                  ],
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      var budget = {
                        "judul": _judulBudget,
                        "nominal": _nominalBudget,
                        "tipe": _tipeBudget,
                        "tanggal": tanggalInput.text
                      };

                      Provider.of<BudgetModel>(context, listen: false)
                          .addBudget(budget);

                      _formKey.currentState?.reset();

                      setState(() {
                        _tipeBudget = 'Pilih Tipe';
                        tanggalInput.text = "";
                      });

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Data telah tersimpan!")));
                    }
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
