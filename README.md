

![GreedyGame](https://github.com/GreedyGame/ios-native-plugin/blob/master/gg_logo2x.png)

# GreedyGame

*GreedyGame Framework helps you to monetise apps or games through ads which are not intrusive and loved by people.*


# Requirements

  - ios 8.0+
  - Swift 3.3+
  - Xcode 9.0+

# Installation
   To integrate GreedyGame framework into your Xcode project using CocoaPods, specify it in your Podfile:


    platform :ios, '9.0'
  	source 'https://github.com/GreedyGame/cocoapod-folio.git'   
    use_frameworks!

	target <Your Target Name> do
	pod ‘GreedyGameSDK’, ‘1.0.3’
	end
    
  Then, run the following command:

	$ pod install
    
 # *Note
Don't forget to add the below RunScript in "Build Phases" before push the game to AppStore.Because we have added the simulator architecture inside the framework in order to test with simualtor.
 
 
   *Select your Target -> Build Phases -> click '+' icon at the top left corner ->  Select Run Script then copy and paste the below runscript.*
 	
 
    echo "Target architectures: $ARCHS"
    APP_PATH="${TARGET_BUILD_DIR}/${WRAPPER_NAME}"
    find "$APP_PATH" -name '*.framework' -type d | while read -r FRAMEWORK
    do
    FRAMEWORK_EXECUTABLE_NAME=$(defaults read "$FRAMEWORK/Info.plist" CFBundleExecutable)
    FRAMEWORK_EXECUTABLE_PATH="$FRAMEWORK/$FRAMEWORK_EXECUTABLE_NAME"
    echo "Executable is $FRAMEWORK_EXECUTABLE_PATH"
    echo $(lipo -info "$FRAMEWORK_EXECUTABLE_PATH")
    FRAMEWORK_TMP_PATH="$FRAMEWORK_EXECUTABLE_PATH-tmp"
    
    #remove simulator's archs if location is not simulator's directory
    case "${TARGET_BUILD_DIR}" in
    *"iphonesimulator")
    echo "No need to remove archs"
    ;;
    *)
    if $(lipo "$FRAMEWORK_EXECUTABLE_PATH" -verify_arch "i386") ; then
    lipo -output "$FRAMEWORK_TMP_PATH" -remove "i386" "$FRAMEWORK_EXECUTABLE_PATH"
    echo "i386 architecture removed"
    rm "$FRAMEWORK_EXECUTABLE_PATH"
    mv "$FRAMEWORK_TMP_PATH" "$FRAMEWORK_EXECUTABLE_PATH"
    fi
    if $(lipo "$FRAMEWORK_EXECUTABLE_PATH" -verify_arch "x86_64") ; then
    lipo -output "$FRAMEWORK_TMP_PATH" -remove "x86_64" "$FRAMEWORK_EXECUTABLE_PATH"
    echo "x86_64 architecture removed"
    rm "$FRAMEWORK_EXECUTABLE_PATH"
    mv "$FRAMEWORK_TMP_PATH" "$FRAMEWORK_EXECUTABLE_PATH"
    fi
    ;;
    esac
    echo "Completed for executable $FRAMEWORK_EXECUTABLE_PATH"
    echo $(lipo -info "$FRAMEWORK_EXECUTABLE_PATH")
    done

