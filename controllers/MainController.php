<?php

namespace controllers;

use core\Controller;

class MainController extends Controller {

	public function indexAction() {
		$result = $this->model->getFlats();
		$vars = [
			'flats' => $result,
		];
		$this->view->render('Главная страница', $vars);
	}

}