% Problem 12_1 Video Basic Info
clear, clc, close all;

% load video
file_name = 'surveillance.avi';
file_info = VideoReader(file_name);

% display some basic info of the video
file_info.VideoCompression
file_info.NumFrames
