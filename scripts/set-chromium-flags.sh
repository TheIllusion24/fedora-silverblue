#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i '/--enable-chrome-browser-cloud-management/d' /etc/chromium/chromium.conf

sed -i 's/FEATURES=""/FEATURES="WebRTCPipeWireCapturer,TouchpadOverscrollHistoryNavigation,CanvasOopRasterization,SplitCacheByNetworkIsolationKey,SplitCodeCacheByNetworkIsolationKey,SplitHostCacheByNetworkIsolationKey,PrefetchPrivacyChanges,IsolateSandboxedIframes,StrictOriginIsolation,PartitionConnectionsByNetworkIsolationKey,PartitionHttpServerPropertiesByNetworkIsolationKey,PartitionSSLSessionsByNetworkIsolationKey,PartitionNelAndReportingByNetworkIsolationKey,EnableCrossSiteFlagNetworkIsolationKey,"/g' /etc/chromium/chromium.conf

echo '

CHROMIUM_FLAGS+=" --ozone-platform=wayland --no-pings --disk-cache-dir=/dev/null --extension-content-verification=enforce_strict --extensions-install-verification=enforce_strict --disable-features=PrivacySandboxSettings4,InterestFeedV2,NTPPopularSitesBakedInContent,UsePopularSitesSuggestions,MediaDrmPreprovisioning,AutofillServerCommunication,DisableThirdPartyStoragePartitioningDeprecationTrial,OptimizationHints,OptimizationHintsFetching,OptimizationHintsFetchingAnonymousDataConsent --enable-gpu-rasterization --enable-zero-copy --video-capture-use-gpu-memory-buffer"

' >> /etc/chromium/chromium.conf
