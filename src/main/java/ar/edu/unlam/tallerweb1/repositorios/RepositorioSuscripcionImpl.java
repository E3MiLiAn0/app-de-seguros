package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Suscripcion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("repositorioSuscripcion")
public class RepositorioSuscripcionImpl implements RepositorioSuscripcion{

    private SessionFactory sessionFactory;

    @Autowired
    public RepositorioSuscripcionImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Suscripcion> mostrarTodasLasSuscripciones() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Suscripcion.class);

        List<Suscripcion> listaSuscripciones = criteria.list();

        return listaSuscripciones;
    }

    @Override
    public Suscripcion buscarSuscripcionPorId(Long idSuscripcion) {
        return (Suscripcion) sessionFactory.getCurrentSession().createCriteria(Suscripcion.class)
                .add(Restrictions.eq("id",idSuscripcion));
    }

    @Override
    public Suscripcion buscarPorNombre(String nombre) {
        final Session session = sessionFactory.getCurrentSession();

        return (Suscripcion) session.createCriteria(Suscripcion.class)
                .add(Restrictions.eq("descripcion", nombre))
                .uniqueResult();
    }


}
