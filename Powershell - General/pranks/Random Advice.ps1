﻿## Random Advice API
if ((Get-Random -Maximum 10000) -lt 1875) {
    Add-Type -AssemblyName System.Speech
    $SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $Message = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://api.adviceslip.com/advice' -UseBasicParsing)).slip.advice
    $SpeechSynth.Speak($Message)
}