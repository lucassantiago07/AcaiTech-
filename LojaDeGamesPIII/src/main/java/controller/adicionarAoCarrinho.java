package controller;
import data.ProdutoData;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "adicionarAoCarrinho", urlPatterns = {"/adicionarAoCarrinho"})
public class adicionarAoCarrinho extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Recupera variaveis da sessão.
        HttpSession session = request.getSession();

        // Recupera lista salva na sessão.
        ArrayList<ProdutoData> listaProdutos = (ArrayList<ProdutoData>) session.getAttribute("listaProdutos");

        // Cria um produto para adicionar a lista.
        ProdutoData produtoCarrinho = new ProdutoData();

        // Recupera o id do produto enviado a servlet
        int idProdutoParaAddNaLista = Integer.parseInt(request.getParameter("idProduto"));

        // Popula o objeto com as informação recebidas
        produtoCarrinho.setId(idProdutoParaAddNaLista);
        produtoCarrinho.setEstoque(idProdutoParaAddNaLista + 8);

        boolean produtoExisteNaLista = false;

        int posicaoArray = 0;

        // Percorre a lista para verificar se o produto já existe
        for (ProdutoData p : listaProdutos) {

            produtoExisteNaLista = p.equals(listaProdutos.get(posicaoArray));
            if (produtoExisteNaLista) {
                // Se já existe sai da lista
                break;
            } else {
                // Se não existe ele continua passando a lista
                posicaoArray++;
            }

        }

        if (produtoExisteNaLista == false) {

            // Se o produto não existe, ele vai adicionar.
            listaProdutos.add(produtoCarrinho);

        } else {
            // Caso já exista nós acresentamos mais um de quantidade 

            // Recupera qual o produto
            ProdutoData produto = listaProdutos.get(posicaoArray);

            // Recupera a quantidade que esta salvo no carrinho
            int quantidade = produto.getEstoque();

            // Aumentando a quantidade
            produto.setEstoque(quantidade + 1);
        }

        // Salva as alterações
        session.setAttribute("listaProdutos", listaProdutos);
        
        // Indica qual pagina deve voltar
        String retorno = "/view/listaProduto.jsp";

        // Retorna para pagina indica sem perder dados.
        request.getServletContext().getRequestDispatcher(retorno).forward(request, response);

    }

}
