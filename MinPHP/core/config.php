<?php
defined('API') or exit('http://gwalker.cn');
return array(
    //数据库连接配置
    'db'=>array(
        'host' => 'localhost',   //数据库地址
        'dbname' => 'apidoc',   //数据库名
        'user' => 'root',    //帐号
        'passwd' => 'as',    //密码
        'linktype' => 'mysqli',    //数据库连接类型 支持mysqli与pdo两种类型
    ),
    //session配置
    'session'=>array(
        'prefix' => 'api_',
    ),
    //cookie配置
    'cookie' => array(
        'navbar' => 'API_NAVBAR_STATUS',
    ),
	//api site配置
	'api_site' => array(
			'url' => 'http://xfy.songzheng.net/mobile',
			'apiSecret'=>'011e577f45d4135003dd30b402cb0bfd'
	),
    //版本信息
    'version'=>array(
        'no' => 'v1.2',  //版本号
        'time' => '2015-10-22 22:02',   //版本时间
    )

);
