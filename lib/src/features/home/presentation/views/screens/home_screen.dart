import 'package:ass_navatech/src/features/home/domain/domain.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bloc.dart';

@RoutePage()
class NVHomeScreen extends StatelessWidget {

  static const route = "/home";

  const NVHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NVHomeBloc, NVHomeState>(
        builder: (context, state) {
          if(state is NVHomeLoading) return _Loading();
          if(state is NVHomeError) return _Error();
          if(state is NVHomeSuccess) return _Success(library: state.library);
          return _None();
        },
      ),
    );
  }

}


class _None extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

}


class _Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

}


class _Error extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Text("Something went wrong!");
  }

}


class _Success extends StatelessWidget {

  final NVAlbumsListEntity library;

  const _Success({required this.library});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(library.albums.length.toString()));
  }

}