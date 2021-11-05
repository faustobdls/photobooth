import 'package:flutter/material.dart';
import 'package:io_photobooth/assets.g.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class StickersTabs extends StatefulWidget {
  const StickersTabs({
    Key? key,
    required this.onStickerSelected,
    required this.onTabChanged,
    this.initialIndex = 0,
  }) : super(key: key);

  final ValueSetter<Asset> onStickerSelected;
  final ValueSetter<int> onTabChanged;
  final int initialIndex;

  @override
  State<StickersTabs> createState() => _StickersTabsState();
}

class _StickersTabsState extends State<StickersTabs>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 6,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
    _tabController.addListener(() {
      // False when swipe
      if (!_tabController.indexIsChanging) {
        widget.onTabChanged(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          onTap: widget.onTabChanged,
          controller: _tabController,
          tabs: [
            const StickersTab(
              key: Key('stickersTabs_patrocinadores'),
              assetPath: 'assets/icons/patrocinadores_icon.png',
            ),
            const StickersTab(
              key: Key('stickersTabs_googleTab'),
              assetPath: 'assets/icons/google_icon.png',
            ),
            const StickersTab(
              key: Key('stickersTabs_hatsTab'),
              assetPath: 'assets/icons/hats_icon.png',
            ),
            const StickersTab(
              key: Key('stickersTabs_eyewearTab'),
              assetPath: 'assets/icons/eyewear_icon.png',
            ),
            const StickersTab(
              key: Key('stickersTabs_foodTab'),
              assetPath: 'assets/icons/food_icon.png',
            ),
            const StickersTab(
              key: Key('stickersTabs_shapesTab'),
              assetPath: 'assets/icons/shapes_icon.png',
            ),
          ],
        ),
        const Divider(),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              StickersTabBarView(
                key: const Key('stickersTabs_patrocinadoresView'),
                stickers: {
                  const Asset(
                    name: '01_aliare_v1',
                    path: 'assets/props/patrocinadores/aliare_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '02_aliare_v1',
                    path: 'assets/props/patrocinadores/aliare_2.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '03_aliare_v1',
                    path: 'assets/props/patrocinadores/aliare_3.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_picpay_v1',
                    path: 'assets/props/patrocinadores/picpay_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '02_picpay_v1',
                    path: 'assets/props/patrocinadores/picpay_2.png',
                    size: Size(1868, 501),
                  ),
                  const Asset(
                    name: '03_picpay_v1',
                    path: 'assets/props/patrocinadores/picpay_3.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_tqi_v1',
                    path: 'assets/props/patrocinadores/tqi_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '02_tqi_v1',
                    path: 'assets/props/patrocinadores/tqi_2.png',
                    size: Size(1868, 501),
                  ),
                  const Asset(
                    name: '03_tqi_v1',
                    path: 'assets/props/patrocinadores/picpay_3.png',
                    size: Size(1000, 987),
                  ),
                  const Asset(
                    name: '01_geek_hunter_v1',
                    path: 'assets/props/patrocinadores/geek_hunter_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '02_geek_hunter_v1',
                    path: 'assets/props/patrocinadores/geek_hunter_2.gif',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_ifood_v1',
                    path: 'assets/props/patrocinadores/ifood_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '02_ifood_v1',
                    path: 'assets/props/patrocinadores/ifood_2.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_zg_solucoes_v1',
                    path: 'assets/props/patrocinadores/zg_solucoes_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '02_zg_solucoes_v1',
                    path: 'assets/props/patrocinadores/zg_solucoes_2.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_accurate_v1',
                    path: 'assets/props/patrocinadores/accurate_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_turing_v1',
                    path: 'assets/props/patrocinadores/turing_1.png',
                    size: Size(1000, 1000),
                  ),
                  const Asset(
                    name: '01_globo_v1',
                    path: 'assets/props/patrocinadores/globo_1.png',
                    size: Size(540,318),
                  ),
                  const Asset(
                    name: '02_globo_v1',
                    path: 'assets/props/patrocinadores/globo_2.png',
                    size: Size(540,319),
                  ),
                  const Asset(
                    name: '03_globo_v1',
                    path: 'assets/props/patrocinadores/globo_3.png',
                    size: Size(540,319),
                  ),
                  const Asset(
                    name: '01_pipefy_v1',
                    path: 'assets/props/patrocinadores/pipefy_1.png',
                    size: Size(600,204),
                  ),
                },
                onStickerSelected: widget.onStickerSelected,
              ),
              StickersTabBarView(
                key: const Key('stickersTabs_googleTabBarView'),
                stickers: Assets.googleProps,
                onStickerSelected: widget.onStickerSelected,
              ),
              StickersTabBarView(
                key: const Key('stickersTabs_hatsTabBarView'),
                stickers: Assets.hatProps,
                onStickerSelected: widget.onStickerSelected,
              ),
              StickersTabBarView(
                key: const Key('stickersTabs_eyewearTabBarView'),
                stickers: Assets.eyewearProps,
                onStickerSelected: widget.onStickerSelected,
              ),
              StickersTabBarView(
                key: const Key('stickersTabs_foodTabBarView'),
                stickers: Assets.foodProps,
                onStickerSelected: widget.onStickerSelected,
              ),
              StickersTabBarView(
                key: const Key('stickersTabs_shapesTabBarView'),
                stickers: Assets.shapeProps,
                onStickerSelected: widget.onStickerSelected,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

@visibleForTesting
class StickersTab extends StatefulWidget {
  const StickersTab({
    Key? key,
    required this.assetPath,
  }) : super(key: key);

  final String assetPath;

  @override
  _StickersTabState createState() => _StickersTabState();
}

class _StickersTabState extends State<StickersTab>
    with AutomaticKeepAliveClientMixin<StickersTab> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Tab(
      iconMargin: const EdgeInsets.only(bottom: 24),
      icon: Image.asset(
        widget.assetPath,
        width: 30,
        height: 30,
        color: IconTheme.of(context).color,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

@visibleForTesting
class StickersTabBarView extends StatelessWidget {
  const StickersTabBarView({
    Key? key,
    required this.stickers,
    required this.onStickerSelected,
  }) : super(key: key);

  final Set<Asset> stickers;
  final ValueSetter<Asset> onStickerSelected;

  static const _smallGridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 100,
    childAspectRatio: 1,
    mainAxisSpacing: 48,
    crossAxisSpacing: 24,
  );

  static const _defaultGridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 150,
    childAspectRatio: 1,
    mainAxisSpacing: 64,
    crossAxisSpacing: 42,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final gridDelegate = size.width < PhotoboothBreakpoints.small
        ? _smallGridDelegate
        : _defaultGridDelegate;
    return GridView.builder(
      key: PageStorageKey<String>('$key'),
      gridDelegate: gridDelegate,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      itemCount: stickers.length,
      itemBuilder: (context, index) {
        final sticker = stickers.elementAt(index);
        return StickerChoice(
          asset: sticker,
          onPressed: () => onStickerSelected(sticker),
        );
      },
    );
  }
}

@visibleForTesting
class StickerChoice extends StatelessWidget {
  const StickerChoice({
    Key? key,
    required this.asset,
    required this.onPressed,
  }) : super(key: key);

  final Asset asset;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset.path,
      frameBuilder: (
        BuildContext context,
        Widget child,
        int? frame,
        bool wasSynchronouslyLoaded,
      ) {
        return AppAnimatedCrossFade(
          firstChild: SizedBox.fromSize(
            size: const Size(20, 20),
            child: const AppCircularProgressIndicator(strokeWidth: 2),
          ),
          secondChild: InkWell(
            onTap: onPressed,
            child: child,
          ),
          crossFadeState: frame == null
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        );
      },
    );
  }
}
