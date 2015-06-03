package br.com.caelum.online.loja.controlador;

import br.com.caelum.online.loja.dominio.UsuarioLogado;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class LoginController {
	private final UsuarioLogado usuarioLogado;
	private final Result result;

	public LoginController(UsuarioLogado usuarioLogado, Result result) {
		this.usuarioLogado = usuarioLogado;
		this.result = result;
	}

	public void loga() {
		this.usuarioLogado.setLogin("caelum");
	}

	public void exibe() {
		result.include("usuario", this.usuarioLogado.getLogin());
	}

}
