<?php

namespace models;

use core\Model;

class Main extends Model {

	public function getFlats() {
		$result = $this->db->row('SELECT * FROM Flat');
		return $result;
	}

}