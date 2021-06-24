package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@WebFilter(urlPatterns = {"/principal/*"})/*Intercepta todas as requisicoes que vierem do projeto ou mapeamento*/
public class FilterAutenticacao implements Filter {

    
    public FilterAutenticacao() {
        
    }

	/*Encerra os processos quando o servidor é parado*/
    //Mataria os processos de conexao com o banco
	public void destroy() {
		
	}

	/*Intercepta e da resposta todas as requisicoes que vem do projeto*/
	/*Tudo que fizer no sistema passa por ele*/
	/*Validacao de autenticacao*/
	/*Dar commit e rolback de transacoes no banco*/
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		String usuarioLogado = (String) session.getAttribute("usuario");
		
		String urlParaAutenticar = req.getServletPath();/*Url que esta sendo acessada*/
		
		/*Validar se esta logado*/
		if (usuarioLogado == null || (usuarioLogado != null && usuarioLogado.isEmpty()) 
				&& !urlParaAutenticar.contains("ServletLogin")) { /*Nao esta logado*/
			
			RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
			request.setAttribute("msg", "Por favor realize o login !");
			redireciona.forward(request, response);
			return; /*Para a execucao e redireciona para o login*/
			
		}else {
			
			chain.doFilter(request, response);
			
		}
		
			
	}

	/*Inicia os processos ou recursos quando o servidor sobe o projeto*/
	//Iniciar conexao com o banco
	public void init(FilterConfig fConfig) throws ServletException {
		
		
	}

}
