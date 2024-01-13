import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isEditing = false;

  String _name = 'Trịnh Quốc Công';
  String _address = 'Eco GreenCity';
  String _email = 'cong.tq194495@sis.hust.edu.vn';
  String _phoneNumber = '0392921501';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = _name;
    _addressController.text = _address;
    _emailController.text = _email;
    _phoneNumberController.text = _phoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildInfoCard(
              title: 'Tên',
              controller: _nameController,
              isEditing: _isEditing,
            ),
            const SizedBox(height: 20),
            _buildInfoCard(
              title: 'Địa chỉ',
              controller: _addressController,
              isEditing: _isEditing,
            ),
            const SizedBox(height: 20),
            _buildInfoCard(
              title: 'Email',
              controller: _emailController,
              isEditing: _isEditing,
            ),
            const SizedBox(height: 20),
            _buildInfoCard(
              title: 'Số điện thoại',
              controller: _phoneNumberController,
              isEditing: _isEditing,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isEditing = !_isEditing;
                  if (!_isEditing) {
                    // Lưu thông tin khi kết thúc chỉnh sửa
                    _name = _nameController.text;
                    _address = _addressController.text;
                    _email = _emailController.text;
                    _phoneNumber = _phoneNumberController.text;
                  }
                });
              },
              child: Text(_isEditing ? 'Lưu' : 'Chỉnh sửa'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required TextEditingController controller,
    required bool isEditing,
  }) {
    return Card(
      color: isEditing ? Colors.white : Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: isEditing
                  ? TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        labelText: title,
                      ),
                    )
                  : Text(
                      controller.text,
                      style: const TextStyle(fontSize: 18.0),
                    ),
            ),
            isEditing
                ? IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: () {
                      setState(() {
                        // Lưu thông tin khi kết thúc chỉnh sửa
                        if (title == 'Tên') {
                          _name = controller.text;
                        } else if (title == 'Địa chỉ') {
                          _address = controller.text;
                        } else if (title == 'Email') {
                          _email = controller.text;
                        } else if (title == 'Số điện thoại') {
                          _phoneNumber = controller.text;
                        }
                        _isEditing = false;
                      });
                    },
                  )
                : IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      setState(() {
                        _isEditing = true;
                      });
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
