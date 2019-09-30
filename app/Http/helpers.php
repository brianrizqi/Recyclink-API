<?php
if (!function_exists('json_response')) {
    function json_response($success, $message, $data = null)
    {
        return response()->json([
            'success' => $success,
            'message' => $message,
            'data' => $data
        ]);
    }
}