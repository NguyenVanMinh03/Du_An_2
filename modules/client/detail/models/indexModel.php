<?php
function get_one_production($id_pro) {
    $result = db_fetch_row("SELECT * FROM `productions` WHERE `id_pro` = $id_pro");
    return $result;
}
function get_list_categories() {
    $result = db_fetch_array("SELECT * FROM `categories`");
    // db_fetch_array("SELECT c.id_cate, c.name_cate, c.des_cate, c.at_cate as `uid` FROM `categories` c JOIN `users` u ON c.id_cate = u.id");
    return $result;
}
function get_one_category($id_cate) {
    $result = db_fetch_row("SELECT * FROM `categories` WHERE `id_cate` = $id_cate");
    return $result;
}
function insertComment($data){
    db_insert("binhluan",$data);
}  
function get_list_comment($id_pro){
    $result = db_fetch_array("SELECT bl.*,u.name_users as `name_users` FROM `binhluan` bl INNER JOIN `users` u ON bl.id_user = u.id_users WHERE bl.id_pro = $id_pro");
    // db_fetch_array("SELECT c.id_cate, c.name_cate, c.des_cate, c.at_cate as `uid` FROM `categories` c JOIN `users` u ON c.id_cate = u.id");
    return $result;
}