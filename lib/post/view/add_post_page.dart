import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/add_post_state.dart';
import '../cubit/post.dart';
import '../post.dart';
import 'widgets/description_form_field.dart';
import 'widgets/name_form_field.dart';
import 'widgets/simple_button.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: BlocConsumer<AddPostCubit, AddPostState>(
                listener: (context, state) {
                  if (state is SuccessAddState) {
                    Navigator.pop(context);
                  }
                },
                builder: (context, state) {
                  if (state is ErrorAddState) {
                    return Text(state.error);
                  }
                  if (state is SuccessAddState) {
                    return const Text('Post added successfully');
                  }

                  if (state is LoadingAddState) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final formState = GlobalKey<FormState>();

                  var post = Post.empty();

                  return Form(
                    key: formState,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TitleFormField(
                          onChanged: (title) {
                            post = post.copyWith(
                              title: title,
                            );
                          },
                        ),
                        DescriptionFormField(
                          onChanged: (description) {
                            post = post.copyWith(
                              description: description,
                            );
                          },
                        ),
                        SimpleButton(
                          onPressed: () {
                            if (formState.currentState!.validate()) {
                              context.read<AddPostCubit>().add(post);
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
