M:configmaster
T:Fconfigmaster$axradio_status_receive[({0}S:S$phy$0$0({10}STaxradio_status_receive_phy:S),Z,0,0)({10}S:S$mac$0$0({10}STaxradio_status_receive_mac:S),Z,0,0)({20}S:S$pktdata$0$0({2}DX,SC:U),Z,0,0)({22}S:S$pktlen$0$0({2}SI:U),Z,0,0)]
T:Fconfigmaster$axradio_address[({0}S:S$addr$0$0({4}DA4d,SC:U),Z,0,0)]
T:Fconfigmaster$axradio_address_mask[({0}S:S$addr$0$0({4}DA4d,SC:U),Z,0,0)({4}S:S$mask$0$0({4}DA4d,SC:U),Z,0,0)]
T:Fconfigmaster$__00000000[({0}S:S$rx$0$0({24}STaxradio_status_receive:S),Z,0,0)({0}S:S$cs$0$0({3}STaxradio_status_channelstate:S),Z,0,0)]
T:Fconfigmaster$axradio_status_channelstate[({0}S:S$rssi$0$0({2}SI:S),Z,0,0)({2}S:S$busy$0$0({1}SC:U),Z,0,0)]
T:Fconfigmaster$axradio_status_receive_mac[({0}S:S$remoteaddr$0$0({4}DA4d,SC:U),Z,0,0)({4}S:S$localaddr$0$0({4}DA4d,SC:U),Z,0,0)({8}S:S$raw$0$0({2}DX,SC:U),Z,0,0)]
T:Fconfigmaster$axradio_status_receive_phy[({0}S:S$rssi$0$0({2}SI:S),Z,0,0)({2}S:S$offset$0$0({4}SL:S),Z,0,0)({6}S:S$timeoffset$0$0({2}SI:S),Z,0,0)({8}S:S$period$0$0({2}SI:S),Z,0,0)]
T:Fconfigmaster$axradio_status[({0}S:S$status$0$0({1}SC:U),Z,0,0)({1}S:S$error$0$0({1}SC:U),Z,0,0)({2}S:S$time$0$0({4}SL:U),Z,0,0)({6}S:S$u$0$0({24}ST__00000000:S),Z,0,0)]
S:G$random_seed$0$0({2}SI:U),E,0,0
S:G$delay$0$0({2}DF,SV:S),C,0,0
S:G$random$0$0({2}DF,SI:U),C,0,0
S:G$signextend12$0$0({2}DF,SL:S),C,0,0
S:G$signextend16$0$0({2}DF,SL:S),C,0,0
S:G$signextend20$0$0({2}DF,SL:S),C,0,0
S:G$signextend24$0$0({2}DF,SL:S),C,0,0
S:G$hweight8$0$0({2}DF,SC:U),C,0,0
S:G$hweight16$0$0({2}DF,SC:U),C,0,0
S:G$hweight32$0$0({2}DF,SC:U),C,0,0
S:G$signedlimit16$0$0({2}DF,SI:S),C,0,0
S:G$checksignedlimit16$0$0({2}DF,SC:U),C,0,0
S:G$signedlimit32$0$0({2}DF,SL:S),C,0,0
S:G$checksignedlimit32$0$0({2}DF,SC:U),C,0,0
S:G$gray_encode8$0$0({2}DF,SC:U),C,0,0
S:G$gray_decode8$0$0({2}DF,SC:U),C,0,0
S:G$rev8$0$0({2}DF,SC:U),C,0,0
S:G$fmemset$0$0({2}DF,SV:S),C,0,0
S:G$fmemcpy$0$0({2}DF,SV:S),C,0,0
S:G$wtimer_standby$0$0({2}DF,SV:S),C,0,0
S:G$enter_standby$0$0({2}DF,SV:S),C,0,0
S:G$enter_sleep$0$0({2}DF,SV:S),C,0,0
S:G$enter_sleep_cont$0$0({2}DF,SV:S),C,0,0
S:G$enter_deepsleep$0$0({2}DF,SV:S),C,0,0
S:G$reset_cpu$0$0({2}DF,SV:S),C,0,0
S:G$turn_off_xosc$0$0({2}DF,SV:S),C,0,0
S:G$turn_off_lpxosc$0$0({2}DF,SV:S),C,0,0
S:G$axradio_init$0$0({2}DF,SC:U),C,0,0
S:G$axradio_cansleep$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_mode$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_mode$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_channel$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_channel$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_pllrange$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_pllvcoi$0$0({2}DF,SC:U),C,0,0
S:G$axradio_set_local_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_get_local_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_set_default_remote_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_get_default_remote_address$0$0({2}DF,SV:S),C,0,0
S:G$axradio_set_freqoffset$0$0({2}DF,SC:U),C,0,0
S:G$axradio_get_freqoffset$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_freq_tohz$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_freq_fromhz$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_timeinterval_totimer0$0$0({2}DF,SL:S),C,0,0
S:G$axradio_conv_time_totimer0$0$0({2}DF,SL:U),C,0,0
S:G$axradio_transmit$0$0({2}DF,SC:U),C,0,0
S:G$axradio_statuschange$0$0({2}DF,SV:S),C,0,0
S:G$axradio_agc_freeze$0$0({2}DF,SC:U),C,0,0
S:G$axradio_agc_thaw$0$0({2}DF,SC:U),C,0,0
S:G$axradio_setup_pincfg1$0$0({2}DF,SV:S),C,0,0
S:G$axradio_setup_pincfg2$0$0({2}DF,SV:S),C,0,0
S:G$axradio_isr$0$0({2}DF,SV:S),C,0,0
S:G$axradio_framing_maclen$0$0({1}SC:U),D,0,0
S:G$axradio_framing_addrlen$0$0({1}SC:U),D,0,0
S:G$remoteaddr$0$0({4}STaxradio_address:S),D,0,0
S:G$localaddr$0$0({8}STaxradio_address_mask:S),D,0,0
S:G$framing_insert_counter$0$0({1}SC:U),D,0,0
S:G$framing_counter_pos$0$0({1}SC:U),D,0,0
S:G$demo_packet$0$0({6}DA6d,SC:U),D,0,0
S:G$lpxosc_settlingtime$0$0({2}SI:U),D,0,0
