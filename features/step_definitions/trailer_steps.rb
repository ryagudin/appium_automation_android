Then(/^I verify that trailer playback started and successfully completed$/) do
  sleep (5)
  timer = Time.now + 500
  sleep (1) until (((exists { find_element(id: "net.flixster.android:id/surface_view") }) == false) || (timer < Time.now))

  log = `adb logcat -d | grep "FlxMain"`


  if log.include? 'onCreate'
    p ">>>> PASS - DGNS is ENABLED. Tests are Valid.... <<<<<"
  else
    fail (">>>> FAIL - DGNS logs are NOT Enabled. Tests Are NOT Valid because test is based on logs. ! INSTALL RC BUILD OR ENABLE DGNS!   <<<<")
  end

  if log.include? 'Unable to connect to http'
    fail (">>>> FAIL - Movie Trailer FAILED to CONNECT to Server. NO INTERNET CONNECTION ? <<<<")
  else
    p ">>>> PASS - Movie Trailer connected to video Server"
  end

  if log.include? 'MovieTrailer.initializeTrailerUrls'
    p ">>>> PASS - Trailer STARTED to PLAY Successfully.... <<<<<"
  else
    fail (">>>> FAIL - Movie Trailer FAILED to Start <<<<")
  end

  if log.include? 'MovieTrailer.onComplete'
    p ">>>> PASS - Movie Trailer Started and Completed Successfully <<<<"
  else
    fail (">>>> FAIL - Movie Trailer STARTED but FAILED to COMPLETE <<<<")
  end

end


Then(/^I verify that trailer can pause and unpause$/) do

  sleep (20)
  2.times { find_element(id: "net.flixster.android:id/surface_view").click }
  p ">>>> INFO - Trailer PAUSE should be initiated"
  sleep (5)
  2.times { find_element(id: "net.flixster.android:id/surface_view").click }
  p ">>>> INFO - Trailer START should be initiated"

  timer = Time.now + 500
  sleep (1) until (((exists { find_element(id: "net.flixster.android:id/surface_view") }) == false) || (timer < Time.now))

  log = `adb logcat -d | grep "FlxMain"`

  if log.include? 'MovieTrailer.onPause'

    p ">>>> PASS - Trailer PAUSED Successfully <<<<<"
  else
    fail (">>>> FAIL - Movie Trailer FAILED to Pause  <<<<")
  end

  if log.include? 'MovieTrailer.onComplete'
    p ">>>> PASS - Movie Trailer STARTED , PAUSED and COMPLETED Successfully <<<<"
  else
    fail (">>>> FAIL - Movie Trailer PAUSE FAILED <<<<")
  end

end