import 'package:flutter_cache_manager/flutter_cache_manager.dart';

const kReelCacheKey = "reelsCacheKey";
final kCacheManager = CacheManager(
  Config(
    kReelCacheKey,
    stalePeriod: const Duration(days: 7), // Maximum cache duration
    maxNrOfCacheObjects: 100, // maximum reels to cache
    repo: JsonCacheInfoRepository(databaseName: kReelCacheKey),
    // fileSystem: IOFileSystem(kReelCacheKey),
    fileService: HttpFileService(),
  ),
);
