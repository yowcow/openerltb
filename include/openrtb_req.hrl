-include("adcom.hrl").

-type openrtb_str() :: binary().
-type openrtb_bool() :: 0 | 1.

-record(openrtb_req, {
          id :: openrtb_str(),
          imp :: [openrtb_req_imp()],
          site :: openrtb_req_site(),
          app :: openrtb_req_app(),
          device :: openrtb_req_device(),
          user :: openrtb_req_user(),
          test :: openrtb_bool(),
          at :: 1 | 2,
          tmax :: integer(),
          wseat :: [openrtb_str()],
          bseat :: [openrtb_str()],
          allimps :: openrtb_bool(),
          cur :: [openrtb_str()],
          wlang :: [openrtb_str()],
          wlangb :: [openrtb_str()],
          bcat :: [openrtb_str()],
          cattax :: integer(),
          badv :: [openrtb_str()],
          bapp :: [openrtb_str()],
          source :: openrtb_req_source(),
          regs :: openrtb_req_regs(),
          ext :: map()
         }).
-record(openrtb_req_source, {
          fd :: openrtb_bool(),
          tid :: openrtb_str(),
          pchain :: openrtb_str(),
          schain :: openrtb_req_schain(),
          ext :: map()
         }).
-record(openrtb_req_regs, {
          coppa :: openrtb_bool(),
          gdpr :: openrtb_bool(),
          us_privacy :: openrtb_str(),
          ext :: map()
         }).
-record(openrtb_req_imp, {
          id :: openrtb_str(),
          metric :: [openrtb_req_metric()],
          banner :: openrtb_req_banner(),
          video :: openrtb_req_video(),
          audio :: openrtb_req_audio(),
          native :: openrtb_req_native(),
          pmp :: openrtb_req_pmp(),
          displaymanager :: openrtb_str(),
          displaymanagerver :: openrtb_str(),
          instl = 0 :: openrtb_bool(),
          tagid :: openrtb_str(),
          bidfloor = 0.0 :: float(),
          bidfloorcur = <<"USD">> :: openrtb_str(),
          clickbrowser :: 0 | 1,
          secure :: openrtb_bool(),
          iframebuster :: [openrtb_str()],
          rwdd = 0 :: openrtb_bool(),
          ssai = 0 :: openrtb_bool(),
          exp :: integer(),
          ext :: map()
         }).
-record(openrtb_req_metric, {
          type :: openrtb_str(),
          value :: float(),
          vendor :: openrtb_str(),
          ext :: map()
         }).
-record(openrtb_req_banner, {
          format :: [openrtb_req_format()],
          w :: integer(),
          h :: integer(),
          btype :: 1 | 2 | 3 | 4,
          battr :: [adcom_creative_attribute()],
          pos :: adcom_placement_position(),
          mimes :: [openrtb_str()],
          topframe :: openrtb_bool(),
          expdir :: [adcom_expandable_directions()],
          api :: [adcom_api_framework()],
          id :: openrtb_str(),
          vcm :: 0 | 1,
          ext :: map()
         }).
-record(openrtb_req_video, {
          mimes :: [openrtb_str()],
          minduration = 0 :: integer(),
          maxduration :: integer(),
          startdelay :: integer(),
          maxseq :: integer(),
          poddur :: integer(),
          protocols :: [adcom_creative_subtype_audio_video()],
          w :: integer(),
          h :: integer(),
          podid :: integer(),
          podseq = 0 :: integer(),
          rqddurs :: [integer()],
          placement :: adcom_placement_subtype_video(),
          linearity :: adcom_linearity_mode(),
          skip :: openrtb_bool(),
          skipmin = 0 :: integer(),
          skipafter = 0 :: integer(),
          sequence = 0 :: integer(),
          slotinpod = 0 :: integer(),
          mincpmpersec :: float(),
          battr :: [adcom_creative_attribute()],
          maxextended :: integer(),
          minbitrate :: integer(),
          maxbitrate :: integer(),
          boxingallowed = 1 :: openrtb_bool(),
          playbackmethod :: [adcom_playback_method()],
          playbackend :: adcom_playback_cessation_mode(),
          delivery :: [adcom_delivery_method()],
          pos :: adcom_placement_position(),
          companionad :: [openrtb_req_banner()],
          api :: [adcom_api_framework()],
          companiontype :: [adcom_companion_type()],
          ext :: map()
         }).
-record(openrtb_req_audio, {}).
-record(openrtb_req_native, {}).
-record(openrtb_req_pmp, {}).
-record(openrtb_req_site, {}).
-record(openrtb_req_app, {}).
-record(openrtb_req_device, {}).
-record(openrtb_req_user, {}).
-record(openrtb_req_schain, {}).

-type openrtb_req_imp() :: #openrtb_req_imp{}.
-type openrtb_req_metric() :: #openrtb_req_metric{}.
-type openrtb_req_banner() :: #openrtb_req_banner{}.
-type openrtb_req_video() :: #openrtb_req_video{}.
-type openrtb_req_audio() :: #openrtb_req_audio{}.
-type openrtb_req_native() :: #openrtb_req_native{}.
-type openrtb_req_pmp() :: #openrtb_req_pmp{}.
-type openrtb_req_site() :: #openrtb_req_site{}.
-type openrtb_req_app() :: #openrtb_req_app{}.
-type openrtb_req_device() :: #openrtb_req_device{}.
-type openrtb_req_user() :: #openrtb_req_user{}.
-type openrtb_req_source() :: #openrtb_req_source{}.
-type openrtb_req_regs() :: #openrtb_req_regs{}.
-type openrtb_req_schain() :: #openrtb_req_schain{}.
