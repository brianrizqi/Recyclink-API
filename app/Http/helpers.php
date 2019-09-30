<?php
if (!function_exists('json_response')) {
    function json_response($success = 1, $message, $data = null)
    {
        return response()->json([
            'success' => $success,
            'message' => $message,
            'data' => $data
        ]);
    }
}

if (!function_exists('json_response_error')) {
    function json_response_error($message, $errors = null, $code = 422)
    {
        return response()->json([
            'success' => 0,
            'message' => $message,
            'errors' => $errors,
        ], $code);
    }
}