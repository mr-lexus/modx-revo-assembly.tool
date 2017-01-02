<?php
class modSiteWebTestProcessor extends modObjectProcessor{

	public function initialize() {
		$initialized = $this->initializeObject();
		if($initialized !== true){
			return $initialized;
		}
		$this->prepareObject($this->object);
		return parent::initialize();
	}

	public function run() {
		$o = "Hello";
		$response = new modProcessorResponse($this->modx,$o);
		return $response;
	}
}
return 'modSiteWebObjectProcessor';
