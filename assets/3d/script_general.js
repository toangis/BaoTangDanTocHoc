(function () {
    var a = {};
    function trans(c, d) {
        var e = arguments['length'] === 0x1 ? [arguments[0x0]] : Array['apply'](null, arguments);
        a[e[0x0]] = e;
        return '';
    }
    function regTextVar(c, d) {
        var e = ![];
        d = d['toLowerCase']();
        var f = function () {
            var o = this['get']('data');
            o['updateText'](o['translateObjs'][c]);
        };
        var g = function (o) {
            var p = o['data']['nextSelectedIndex'];
            if (p >= 0x0) {
                var q = o['source']['get']('items')[p];
                var r = function () {
                    q['unbind']('start', r, this);
                    f['call'](this);
                };
                q['bind']('start', r, this);
            } else
                f['call'](this);
        };
        var h = function (o) {
            return function (p) {
                if (o in p) {
                    f['call'](this);
                }
            }['bind'](this);
        };
        var i = function (o, p) {
            return function (q, r) {
                if (o == q && p in r) {
                    f['call'](this);
                }
            }['bind'](this);
        };
        var j = function (o, p, q) {
            for (var r = 0x0; r < o['length']; ++r) {
                var s = o[r];
                var t = s['get']('selectedIndex');
                if (t >= 0x0) {
                    var u = p['split']('.');
                    var v = s['get']('items')[t];
                    if (q !== undefined && !q['call'](this, v))
                        continue;
                    for (var w = 0x0; w < u['length']; ++w) {
                        if (v == undefined)
                            return '';
                        v = 'get' in v ? v['get'](u[w]) : v[u[w]];
                    }
                    return v;
                }
            }
            return '';
        };
        var k = function (o) {
            var p = o['get']('player');
            return p !== undefined && p['get']('viewerArea') == this['getMainViewer']();
        };
        switch (d) {
        case 'title':
        case 'subtitle':
            var m = function () {
                switch (d) {
                case 'title':
                    return 'media.label';
                case 'subtitle':
                    return 'media.data.subtitle';
                }
            }();
            if (m) {
                return function () {
                    var o = this['_getPlayListsWithViewer'](this['getMainViewer']());
                    if (!e) {
                        for (var p = 0x0; p < o['length']; ++p) {
                            o[p]['bind']('changing', g, this);
                        }
                        e = !![];
                    }
                    return j['call'](this, o, m, k);
                };
            }
            break;
        default:
            if (d['startsWith']('quiz.') && 'Quiz' in TDV) {
                var n = undefined;
                var m = function () {
                    switch (d) {
                    case 'quiz.questions.answered':
                        return TDV['Quiz']['PROPERTY']['QUESTIONS_ANSWERED'];
                    case 'quiz.question.count':
                        return TDV['Quiz']['PROPERTY']['QUESTION_COUNT'];
                    case 'quiz.items.found':
                        return TDV['Quiz']['PROPERTY']['ITEMS_FOUND'];
                    case 'quiz.item.count':
                        return TDV['Quiz']['PROPERTY']['ITEM_COUNT'];
                    case 'quiz.score':
                        return TDV['Quiz']['PROPERTY']['SCORE'];
                    case 'quiz.score.total':
                        return TDV['Quiz']['PROPERTY']['TOTAL_SCORE'];
                    case 'quiz.time.remaining':
                        return TDV['Quiz']['PROPERTY']['REMAINING_TIME'];
                    case 'quiz.time.elapsed':
                        return TDV['Quiz']['PROPERTY']['ELAPSED_TIME'];
                    case 'quiz.time.limit':
                        return TDV['Quiz']['PROPERTY']['TIME_LIMIT'];
                    case 'quiz.media.items.found':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_ITEMS_FOUND'];
                    case 'quiz.media.item.count':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_ITEM_COUNT'];
                    case 'quiz.media.questions.answered':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_QUESTIONS_ANSWERED'];
                    case 'quiz.media.question.count':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_QUESTION_COUNT'];
                    case 'quiz.media.score':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_SCORE'];
                    case 'quiz.media.score.total':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_TOTAL_SCORE'];
                    case 'quiz.media.index':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_INDEX'];
                    case 'quiz.media.count':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_COUNT'];
                    case 'quiz.media.visited':
                        return TDV['Quiz']['PROPERTY']['PANORAMA_VISITED_COUNT'];
                    default:
                        var o = /quiz\.([\w_]+)\.(.+)/['exec'](d);
                        if (o) {
                            n = o[0x1];
                            switch ('quiz.' + o[0x2]) {
                            case 'quiz.score':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['SCORE'];
                            case 'quiz.score.total':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['TOTAL_SCORE'];
                            case 'quiz.media.items.found':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['PANORAMA_ITEMS_FOUND'];
                            case 'quiz.media.item.count':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['PANORAMA_ITEM_COUNT'];
                            case 'quiz.media.questions.answered':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['PANORAMA_QUESTIONS_ANSWERED'];
                            case 'quiz.media.question.count':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['PANORAMA_QUESTION_COUNT'];
                            case 'quiz.questions.answered':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['QUESTIONS_ANSWERED'];
                            case 'quiz.question.count':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['QUESTION_COUNT'];
                            case 'quiz.items.found':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['ITEMS_FOUND'];
                            case 'quiz.item.count':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['ITEM_COUNT'];
                            case 'quiz.media.score':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['PANORAMA_SCORE'];
                            case 'quiz.media.score.total':
                                return TDV['Quiz']['OBJECTIVE_PROPERTY']['PANORAMA_TOTAL_SCORE'];
                            }
                        }
                    }
                }();
                if (m) {
                    return function () {
                        var o = this['get']('data')['quiz'];
                        if (o) {
                            if (!e) {
                                if (n != undefined)
                                    if (n == 'global') {
                                        var q = this['get']('data')['quizConfig'];
                                        var s = q['objectives'];
                                        for (var u = 0x0, w = s['length']; u < w; ++u) {
                                            o['bind'](TDV['Quiz']['EVENT_OBJECTIVE_PROPERTIES_CHANGE'], i['call'](this, s[u]['id'], m), this);
                                        }
                                    } else {
                                        o['bind'](TDV['Quiz']['EVENT_OBJECTIVE_PROPERTIES_CHANGE'], i['call'](this, n, m), this);
                                    }
                                else
                                    o['bind'](TDV['Quiz']['EVENT_PROPERTIES_CHANGE'], h['call'](this, m), this);
                                e = !![];
                            }
                            try {
                                var x = 0x0;
                                if (n != undefined) {
                                    if (n == 'global') {
                                        var q = this['get']('data')['quizConfig'];
                                        var s = q['objectives'];
                                        for (var u = 0x0, w = s['length']; u < w; ++u) {
                                            x += o['getObjective'](s[u]['id'], m);
                                        }
                                    } else {
                                        x = o['getObjective'](n, m);
                                    }
                                } else {
                                    x = o['get'](m);
                                    if (m == TDV['Quiz']['PROPERTY']['PANORAMA_INDEX'])
                                        x += 0x1;
                                }
                                return x;
                            } catch (y) {
                                return undefined;
                            }
                        }
                    };
                }
            }
            break;
        }
        return '';
    }
    function createQuizConfig(player, c) {
        var d = {};
        d['player'] = player;
        d['playList'] = c;
        function e(h) {
            for (var j = 0x0; j < h['length']; ++j) {
                var k = h[j];
                if ('id' in k)
                    player[k['id']] = k;
            }
        }
        if (d['questions']) {
            e(d['questions']);
            for (var f = 0x0; f < d['questions']['length']; ++f) {
                var g = d['questions'][f];
                e(g['options']);
            }
        }
        if (d['objectives']) {
            e(d['objectives']);
        }
        if (d['califications']) {
            e(d['califications']);
        }
        if (d['score']) {
            player[d['score']['id']] = d['score'];
        }
        if (d['question']) {
            player[d['question']['id']] = d['question'];
        }
        if (d['timeout']) {
            player[d['timeout']['id']] = d['timeout'];
        }
        player['get']('data')['translateObjs'] = a;
        return d;
    }
    var b = {"data":{"name":"Player501","locales":{"en":"locale/en.txt"},"defaultLocale":"en","textToSpeechConfig":{"speechOnTooltip":false,"speechOnQuizQuestion":false,"volume":1,"pitch":1,"speechOnInfoWindow":false,"stopBackgroundAudio":false,"rate":1}},"scrollBarColor":"#000000","scrollBarWidth":10,"downloadEnabled":false,"minHeight":20,"gap":10,"scrollBarOpacity":0.5,"borderRadius":0,"width":"100%","paddingTop":0,"horizontalAlign":"left","paddingBottom":0,"id":"rootPlayer","mouseWheelEnabled":true,"propagateClick":false,"paddingRight":0,"paddingLeft":0,"verticalAlign":"top","contentOpaque":false,"vrPolyfillScale":0.75,"height":"100%","backgroundColor":["#FFFFFF"],"toolTipHorizontalAlign":"center","children":["this.MainViewer"],"layout":"absolute","overflow":"hidden","backgroundPreloadEnabled":true,"scrollBarMargin":2,"defaultVRPointer":"laser","scripts":{"loadFromCurrentMediaPlayList":TDV.Tour.Script.loadFromCurrentMediaPlayList,"assignObjRecursively":TDV.Tour.Script.assignObjRecursively,"_initTTSTooltips":TDV.Tour.Script._initTTSTooltips,"textToSpeech":TDV.Tour.Script.textToSpeech,"showPopupPanoramaVideoOverlay":TDV.Tour.Script.showPopupPanoramaVideoOverlay,"keepCompVisible":TDV.Tour.Script.keepCompVisible,"showPopupPanoramaOverlay":TDV.Tour.Script.showPopupPanoramaOverlay,"getMediaHeight":TDV.Tour.Script.getMediaHeight,"copyToClipboard":TDV.Tour.Script.copyToClipboard,"getMediaWidth":TDV.Tour.Script.getMediaWidth,"showPopupImage":TDV.Tour.Script.showPopupImage,"_initItemWithComps":TDV.Tour.Script._initItemWithComps,"resumeGlobalAudios":TDV.Tour.Script.resumeGlobalAudios,"showPopupMedia":TDV.Tour.Script.showPopupMedia,"resumePlayers":TDV.Tour.Script.resumePlayers,"getComponentsByTags":TDV.Tour.Script.getComponentsByTags,"showComponentsWhileMouseOver":TDV.Tour.Script.showComponentsWhileMouseOver,"getMediaFromPlayer":TDV.Tour.Script.getMediaFromPlayer,"cloneCamera":TDV.Tour.Script.cloneCamera,"getPlayListsWithMedia":TDV.Tour.Script.getPlayListsWithMedia,"getMediaByTags":TDV.Tour.Script.getMediaByTags,"copyObjRecursively":TDV.Tour.Script.copyObjRecursively,"getKey":TDV.Tour.Script.getKey,"changePlayListWithSameSpot":TDV.Tour.Script.changePlayListWithSameSpot,"getMediaByName":TDV.Tour.Script.getMediaByName,"changeOpacityWhilePlay":TDV.Tour.Script.changeOpacityWhilePlay,"existsKey":TDV.Tour.Script.existsKey,"isPanorama":TDV.Tour.Script.isPanorama,"unregisterKey":TDV.Tour.Script.unregisterKey,"openLink":TDV.Tour.Script.openLink,"autotriggerAtStart":TDV.Tour.Script.autotriggerAtStart,"getCurrentPlayers":TDV.Tour.Script.getCurrentPlayers,"clone":TDV.Tour.Script.clone,"getGlobalAudio":TDV.Tour.Script.getGlobalAudio,"_initTwinsViewer":TDV.Tour.Script._initTwinsViewer,"isCardboardViewMode":TDV.Tour.Script.isCardboardViewMode,"registerKey":TDV.Tour.Script.registerKey,"visibleComponentsIfPlayerFlagEnabled":TDV.Tour.Script.visibleComponentsIfPlayerFlagEnabled,"changeBackgroundWhilePlay":TDV.Tour.Script.changeBackgroundWhilePlay,"getCurrentPlayerWithMedia":TDV.Tour.Script.getCurrentPlayerWithMedia,"shareSocial":TDV.Tour.Script.shareSocial,"init":TDV.Tour.Script.init,"setStartTimeVideoSync":TDV.Tour.Script.setStartTimeVideoSync,"getActivePlayerWithViewer":TDV.Tour.Script.getActivePlayerWithViewer,"quizShowQuestion":TDV.Tour.Script.quizShowQuestion,"skip3DTransitionOnce":TDV.Tour.Script.skip3DTransitionOnce,"setMapLocation":TDV.Tour.Script.setMapLocation,"quizSetItemFound":TDV.Tour.Script.quizSetItemFound,"getComponentByName":TDV.Tour.Script.getComponentByName,"playGlobalAudio":TDV.Tour.Script.playGlobalAudio,"updateVideoCues":TDV.Tour.Script.updateVideoCues,"_initSplitViewer":TDV.Tour.Script._initSplitViewer,"playGlobalAudioWhilePlay":TDV.Tour.Script.playGlobalAudioWhilePlay,"setStartTimeVideo":TDV.Tour.Script.setStartTimeVideo,"updateMediaLabelFromPlayList":TDV.Tour.Script.updateMediaLabelFromPlayList,"updateDeepLink":TDV.Tour.Script.updateDeepLink,"takeScreenshot":TDV.Tour.Script.takeScreenshot,"initQuiz":TDV.Tour.Script.initQuiz,"initOverlayGroupRotationOnClick":TDV.Tour.Script.initOverlayGroupRotationOnClick,"triggerOverlay":TDV.Tour.Script.triggerOverlay,"initAnalytics":TDV.Tour.Script.initAnalytics,"setComponentsVisibilityByTags":TDV.Tour.Script.setComponentsVisibilityByTags,"getActiveMediaWithViewer":TDV.Tour.Script.getActiveMediaWithViewer,"pauseGlobalAudios":TDV.Tour.Script.pauseGlobalAudios,"playAudioList":TDV.Tour.Script.playAudioList,"htmlToPlainText":TDV.Tour.Script.htmlToPlainText,"pauseGlobalAudio":TDV.Tour.Script.pauseGlobalAudio,"historyGoForward":TDV.Tour.Script.historyGoForward,"pauseGlobalAudiosWhilePlayItem":TDV.Tour.Script.pauseGlobalAudiosWhilePlayItem,"historyGoBack":TDV.Tour.Script.historyGoBack,"downloadFile":TDV.Tour.Script.downloadFile,"executeFunctionWhenChange":TDV.Tour.Script.executeFunctionWhenChange,"setCameraSameSpotAsMedia":TDV.Tour.Script.setCameraSameSpotAsMedia,"setComponentVisibility":TDV.Tour.Script.setComponentVisibility,"pauseCurrentPlayers":TDV.Tour.Script.pauseCurrentPlayers,"textToSpeechComponent":TDV.Tour.Script.textToSpeechComponent,"setSurfaceSelectionHotspotMode":TDV.Tour.Script.setSurfaceSelectionHotspotMode,"sendAnalyticsData":TDV.Tour.Script.sendAnalyticsData,"fixTogglePlayPauseButton":TDV.Tour.Script.fixTogglePlayPauseButton,"getPlayListItemByMedia":TDV.Tour.Script.getPlayListItemByMedia,"stopTextToSpeech":TDV.Tour.Script.stopTextToSpeech,"getPlayListItems":TDV.Tour.Script.getPlayListItems,"openEmbeddedPDF":TDV.Tour.Script.openEmbeddedPDF,"setPanoramaCameraWithSpot":TDV.Tour.Script.setPanoramaCameraWithSpot,"quizShowScore":TDV.Tour.Script.quizShowScore,"getPixels":TDV.Tour.Script.getPixels,"setPanoramaCameraWithCurrentSpot":TDV.Tour.Script.setPanoramaCameraWithCurrentSpot,"getPlayListWithItem":TDV.Tour.Script.getPlayListWithItem,"stopGlobalAudios":TDV.Tour.Script.stopGlobalAudios,"setOverlaysVisibilityByTags":TDV.Tour.Script.setOverlaysVisibilityByTags,"stopGlobalAudio":TDV.Tour.Script.stopGlobalAudio,"_getPlayListsWithViewer":TDV.Tour.Script._getPlayListsWithViewer,"setMainMediaByIndex":TDV.Tour.Script.setMainMediaByIndex,"getFirstPlayListWithMedia":TDV.Tour.Script.getFirstPlayListWithMedia,"setOverlaysVisibility":TDV.Tour.Script.setOverlaysVisibility,"setOverlayBehaviour":TDV.Tour.Script.setOverlayBehaviour,"quizStart":TDV.Tour.Script.quizStart,"quizShowTimeout":TDV.Tour.Script.quizShowTimeout,"setLocale":TDV.Tour.Script.setLocale,"quizFinish":TDV.Tour.Script.quizFinish,"_getObjectsByTags":TDV.Tour.Script._getObjectsByTags,"getPanoramaOverlayByName":TDV.Tour.Script.getPanoramaOverlayByName,"stopAndGoCamera":TDV.Tour.Script.stopAndGoCamera,"getPanoramaOverlaysByTags":TDV.Tour.Script.getPanoramaOverlaysByTags,"syncPlaylists":TDV.Tour.Script.syncPlaylists,"startPanoramaWithCamera":TDV.Tour.Script.startPanoramaWithCamera,"getOverlaysByGroupname":TDV.Tour.Script.getOverlaysByGroupname,"showWindow":TDV.Tour.Script.showWindow,"setEndToItemIndex":TDV.Tour.Script.setEndToItemIndex,"getOverlaysByTags":TDV.Tour.Script.getOverlaysByTags,"setValue":TDV.Tour.Script.setValue,"setMediaBehaviour":TDV.Tour.Script.setMediaBehaviour,"mixObject":TDV.Tour.Script.mixObject,"setMainMediaByName":TDV.Tour.Script.setMainMediaByName,"getMainViewer":TDV.Tour.Script.getMainViewer,"translate":TDV.Tour.Script.translate,"getOverlays":TDV.Tour.Script.getOverlays},"definitions": [{"gyroscopeVerticalDraggingEnabled":true,"viewerArea":"this.MainViewer","displayPlaybackBar":true,"touchControlMode":"drag_rotation","zoomEnabled":true,"class":"PanoramaPlayer","arrowKeysAction":"translate","surfaceSelectionEnabled":false,"aaEnabled":true,"mouseControlMode":"drag_rotation","id":"MainViewerPanoramaPlayer"},{"thumbnailUrl":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_t.jpg","label":trans('panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7.label'),"class":"Panorama","frames":[{"cube":{"levels":[{"width":30720,"colCount":60,"rowCount":10,"url":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_0/{face}/0/{row}_{column}.jpg","height":5120,"tags":"ondemand","class":"TiledImageResourceLevel"},{"width":15360,"colCount":30,"rowCount":5,"url":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_0/{face}/1/{row}_{column}.jpg","height":2560,"tags":"ondemand","class":"TiledImageResourceLevel"},{"width":9216,"colCount":18,"rowCount":3,"url":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_0/{face}/2/{row}_{column}.jpg","height":1536,"tags":"ondemand","class":"TiledImageResourceLevel"},{"width":6144,"colCount":12,"rowCount":2,"url":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_0/{face}/3/{row}_{column}.jpg","height":1024,"tags":"ondemand","class":"TiledImageResourceLevel"},{"width":3072,"colCount":6,"rowCount":1,"url":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_0/{face}/4/{row}_{column}.jpg","height":512,"tags":["ondemand","preload"],"class":"TiledImageResourceLevel"},{"width":12288,"colCount":6,"rowCount":1,"url":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_0/{face}/vr2gen/0.jpg","height":2048,"tags":"mobilevr2gen","class":"TiledImageResourceLevel"}],"class":"ImageResource"},"class":"CubicPanoramaFrame","thumbnailUrl":"media/panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_t.jpg"}],"hfovMax":105,"hfov":360,"partial":false,"data":{"label":"copy"},"vfov":180,"pitch":0,"id":"panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7"},{"toolTipPaddingLeft":6,"subtitlesOpacity":1,"toolTipTextShadowColor":"#000000","toolTipShadowHorizontalLength":0,"playbackBarHeadBackgroundColor":["#111111","#666666"],"subtitlesPaddingTop":5,"playbackBarRight":0,"subtitlesFontColor":"#FFFFFF","subtitlesTextDecoration":"none","playbackBarHeadBorderColor":"#000000","playbackBarProgressOpacity":1,"borderRadius":0,"toolTipFontStyle":"normal","progressLeft":0,"data":{"name":"Main Viewer"},"subtitlesBottom":50,"subtitlesPaddingLeft":5,"progressBorderRadius":0,"subtitlesTextShadowBlurRadius":0,"subtitlesPaddingRight":5,"id":"MainViewer","playbackBarHeadShadowBlurRadius":3,"displayTooltipInSurfaceSelection":true,"width":"100%","paddingRight":0,"playbackBarHeadShadowHorizontalLength":0,"paddingLeft":0,"toolTipFontSize":"1.11vmin","playbackBarBorderSize":0,"toolTipBackgroundColor":"#F6F6F6","toolTipDisplayTime":600,"toolTipOpacity":1,"doubleClickAction":"toggle_fullscreen","subtitlesFontWeight":"normal","subtitlesGap":0,"toolTipShadowSpread":0,"playbackBarLeft":0,"playbackBarBottom":5,"subtitlesBackgroundColor":"#000000","subtitlesTextShadowColor":"#000000","playbackBarProgressBorderRadius":0,"subtitlesHorizontalAlign":"center","playbackBarHeadHeight":15,"transitionDuration":500,"playbackBarProgressBackgroundColor":["#3399FF"],"height":"100%","playbackBarProgressBackgroundColorRatios":[0],"subtitlesVerticalAlign":"bottom","class":"ViewerArea","playbackBarProgressBackgroundColorDirection":"vertical","toolTipBorderSize":1,"minHeight":50,"subtitlesTextShadowVerticalLength":1,"playbackBarHeadShadowOpacity":0.7,"minWidth":100,"progressBackgroundOpacity":1,"subtitlesTextShadowOpacity":1,"toolTipShadowBlurRadius":3,"toolTipPaddingTop":4,"vrPointerSelectionColor":"#FF6600","playbackBarBorderColor":"#FFFFFF","subtitlesBorderColor":"#FFFFFF","progressBackgroundColorRatios":[0],"toolTipShadowOpacity":1,"toolTipPaddingBottom":4,"toolTipBorderColor":"#767676","subtitlesTextShadowHorizontalLength":1,"subtitlesBorderSize":0,"toolTipFontWeight":"normal","playbackBarHeadShadowColor":"#000000","firstTransitionDuration":0,"paddingTop":0,"progressOpacity":1,"progressBarBorderColor":"#000000","toolTipTextShadowBlurRadius":3,"progressRight":0,"progressBarBackgroundColorDirection":"vertical","paddingBottom":0,"playbackBarHeadBorderSize":0,"playbackBarBorderRadius":0,"playbackBarHeadBackgroundColorRatios":[0,1],"progressBackgroundColorDirection":"vertical","playbackBarHeadShadow":true,"progressBarBackgroundColorRatios":[0],"surfaceReticleColor":"#FFFFFF","playbackBarProgressBorderColor":"#000000","subtitlesFontSize":"3vmin","borderSize":0,"playbackBarBackgroundOpacity":1,"toolTipPaddingRight":6,"subtitlesPaddingBottom":5,"progressBorderColor":"#000000","surfaceReticleOpacity":0.6,"translationTransitionDuration":1000,"toolTipShadowColor":"#333333","playbackBarHeadOpacity":1,"subtitlesFontFamily":"Arial","surfaceReticleSelectionColor":"#FFFFFF","vrPointerColor":"#FFFFFF","progressBarBackgroundColor":["#3399FF"],"toolTipTextShadowOpacity":0,"surfaceReticleSelectionOpacity":1,"subtitlesShadow":false,"vrPointerSelectionTime":2000,"progressBarOpacity":1,"toolTipHorizontalAlign":"center","subtitlesBackgroundOpacity":0.2,"progressBackgroundColor":["#FFFFFF"],"transitionMode":"blending","displayTooltipInTouchScreens":true,"playbackBarHeight":10,"playbackBarHeadShadowVerticalLength":0,"playbackBarBackgroundColor":["#FFFFFF"],"progressBottom":0,"progressHeight":10,"subtitlesTop":0,"toolTipFontColor":"#606060","progressBarBorderRadius":0,"toolTipBorderRadius":3,"progressBorderSize":0,"playbackBarHeadWidth":6,"propagateClick":false,"toolTipShadowVerticalLength":0,"playbackBarHeadBackgroundColorDirection":"vertical","playbackBarHeadBorderRadius":0,"subtitlesEnabled":true,"progressBarBorderSize":0,"playbackBarBackgroundColorDirection":"vertical","playbackBarProgressBorderSize":0,"shadow":false,"playbackBarOpacity":1,"toolTipFontFamily":"Arial"},{"automaticZoomSpeed":0,"class":"PanoramaCamera","manualZoomSpeed":0,"initialSequence":"this.sequence_00B0E643_094F_1B8A_418E_765A4BDD06D1","automaticRotationSpeed":4,"initialPosition":{"hfov":105,"yaw":3.13,"class":"PanoramaCameraPosition","pitch":-43.06},"hoverFactor":0,"id":"panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_camera"},{"class":"PlayList","items":[{"player":"this.MainViewerPanoramaPlayer","camera":"this.panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7_camera","media":"this.panorama_037A1C1C_094F_0FBF_4195_2B7B8EBEB9B7","class":"PanoramaPlayListItem","end":"this.trigger('tourEnded')"}],"id":"mainPlayList"},{"restartMovementOnUserInteraction":false,"movements":[{"easing":"cubic_in","class":"DistancePanoramaCameraMovement","yawDelta":18.5,"yawSpeed":1.07},{"easing":"linear","class":"DistancePanoramaCameraMovement","yawDelta":5363,"yawSpeed":1.07},{"easing":"cubic_out","class":"DistancePanoramaCameraMovement","yawDelta":18.5,"yawSpeed":1.07}],"class":"PanoramaCameraSequence","id":"sequence_00B0E643_094F_1B8A_418E_765A4BDD06D1"}],"desktopMipmappingEnabled":false,"class":"Player","backgroundOpacity":1,"start":"this.init()","mediaActivationMode":"window","backgroundColorDirection":"vertical","backgroundColorRatios":[0],"mobileMipmappingEnabled":false,"minWidth":20,"shadow":false,"borderSize":0,"scrollBarVisible":"rollOver"};
    if (b['data'] == undefined)
        b['data'] = {};
    b['data']['translateObjs'] = a;
    b['data']['history'] = {};
    b['scripts']['createQuizConfig'] = createQuizConfig;
    TDV['PlayerAPI']['defineScript'](b);
}());
//# sourceMappingURL=http://localhost:9000/script_device_v2021.2.25.js.map
//Generated with v2021.2.25, Thu Dec 30 2021