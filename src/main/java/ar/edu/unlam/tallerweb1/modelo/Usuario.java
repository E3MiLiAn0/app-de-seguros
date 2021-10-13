package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.*;

import ar.edu.unlam.tallerweb1.modelo.Especialidad;
import ar.edu.unlam.tallerweb1.modelo.Provincia;

// Clase que modela el concepto de Usuario, la anotacion @Entity le avisa a hibernate que esta clase es persistible
// el paquete ar.edu.unlam.tallerweb1.modelo esta indicado en el archivo hibernateCOntext.xml para que hibernate
// busque entities en el
@Entity
//@NamedQueries(@NamedQuery(name = "userByRol", query = "from Usuario where rol =:lalala"))
public class Usuario {

	// La anotacion id indica que este atributo es el utilizado como clave primaria de la entity, se indica que el valor es autogenerado.
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	// para el resto de los atributo no se usan anotaciones entonces se usa el default de hibernate: la columna se llama igual que
	// el atributo, la misma admite nulos, y el tipo de dato se deduce del tipo de dato de java.
	private String nombre;
	private String apellido;
	private String email;
	private String password;
	@OneToOne
	private Especialidad especialidad;
	@OneToOne
	private Provincia provincia;
	@OneToOne(cascade = CascadeType.ALL)
	private Rol rol;
	private Boolean activo = false;
	@OneToOne(cascade = CascadeType.ALL)
	private Cuenta cuenta;
	@OneToOne(cascade = CascadeType.ALL)
	private Suscripcion suscripcion;



	public Suscripcion getSuscripcion() {
		return suscripcion;
	}

	public void setSuscripcion(Suscripcion suscripcion) {
		this.suscripcion = suscripcion;
	}
	public Cuenta getCuenta() {
		return cuenta;
	}
	public void setCuenta(Cuenta cuenta) {
		this.cuenta = cuenta;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Rol getRol() {
		return rol;
	}
	public void setRol(Rol rol) {
		this.rol = rol;
	}
	public Boolean getActivo() {
		return activo;
	}
	public void setActivo(Boolean activo) {
		this.activo = activo;
	}

	public boolean activo() {
		return activo;
    }

    public void activar() {
		activo = true;
    }

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Especialidad getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(Especialidad especialidad) {
		this.especialidad = especialidad;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}
    
    
}