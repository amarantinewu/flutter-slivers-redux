import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Effect<StoreState> buildEffect() {
  return combineEffects(<Object, Effect<StoreState>>{
    Lifecycle.initState: _init,
  });
}

///构建默认数据
void _init(Action action, Context<StoreState> ctx) {
  List<ChoiceState> choices = <ChoiceState>[
    ChoiceState(title: 'CAR', icon: Icons.directions_car),
    ChoiceState(title: 'BICYCLE', icon: Icons.directions_bike),
    ChoiceState(title: 'BOAT', icon: Icons.directions_boat),
    ChoiceState(title: 'BUS', icon: Icons.directions_bus),
    ChoiceState(title: 'TRAIN', icon: Icons.directions_railway),
    ChoiceState(title: 'WALK', icon: Icons.directions_walk),
  ];
  ctx.dispatch(StoreActionCreator.onInitDone(choices));
}

