package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Denuncia;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioDenuncia;


@Service("servicioDenuncia")
@Transactional
public class ServicioDenunciaImp implements ServicioDenuncia {
	
	private RepositorioDenuncia repositorioDenuncia;
	
	@Autowired
	public ServicioDenunciaImp(RepositorioDenuncia repositorioDenuncia) {
		this.repositorioDenuncia=repositorioDenuncia;
	}

	
	@Override
	public List<Denuncia> traerDenuncia() {
		List <Denuncia> denunciasDescripcion= repositorioDenuncia.traerDenuncia();
		return denunciasDescripcion ;
	}

}