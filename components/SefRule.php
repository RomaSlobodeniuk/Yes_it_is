<?php

namespace app\components;

use yii\web\UrlRule;
use app\models\Sef;

class SefRule extends UrlRule
{
    public $connectionID = 'db';

    public function init()
    {
        if ($this->name === null) {
            $this->name = __CLASS__;
        }
    }

    public function createUrl($manager, $route, $params)
    {

        if ($route == "blog/index") {
            if (isset($params['page'])) {
                return "?page=" . $params['page'];
            } else {
                return '';
            }
        }
        if ($route == "blog/search") {
            return 'search.html?q=' . $params['q'];
        }
        if ($route == "blog_index") {
            $link = '';
        } else {
            $link = $route;
        }

        $page = false;
        if (count($params)) {
            $link .= "?";
            foreach ($params as $key => $value) {
                if ($key == 'page') {
                    $page = $value;
                    continue;
                }
                $link .= "$key=$value&";
            }
            $link = substr($link, 0, -1);
        }
//        echo '<pre>';
//        print_r($link);
//        echo '</pre>';
//        die;
        $sef = Sef::find()->where(["link" => $link])->one();

        if ($sef) {
            if ($page) {
                return $sef->link_sef . ".html?page=$page";
            } else {
                return $sef->link_sef . ".html";
            }
        } else {
            return false;
        }
    }

    public function parseRequest($manager, $request)
    {
        $pathInfo = $request->getPathInfo();
        if (preg_match('/^(.*)\.html$/i', $pathInfo, $matches)) {
            $link_sef = $matches[1];
            $sef = Sef::find()->where(["link_sef" => $link_sef])->one();
            if ($sef) {
                $link_data = explode("?", $sef->link);
                $route = $link_data[0];
                $params = array();
                if (!empty($link_data[1])) {
                    $temp = explode("&", $link_data[1]);
                    foreach ($temp as $t) {
                        $t = explode("=", $t);
                        $params[$t[0]] = $t[1];
                    }
                }
//                echo '<pre>';
//                print_r([$route, $params]);
//                echo '</pre>';
//                die;
                return [$route, $params];
            }
        }
        return false;
    }
}