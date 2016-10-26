<div class="bd-example">
<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal<%= id%>">Editar</button>
<div class="modal fade" id="exampleModal<%= id %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="exampleModalLabel<%= id %>">Editar cadastro</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="ed-nome" class="form-control-label">Nome:</label>
            <input type="text" class="form-control" id="ed-nome" name="txt_novo_nome" value="<%= cl.getNome() %>">
          </div>
          <div class="form-group">
            <label for="ed-rg" class="form-control-label">RG:</label>
            <input type="text" class="form-control" id="ed-rg" name="txt_novo_rg" value="<%= cl.getRg() %>">
          </div>
          <div class="form-group">
            <label for="ed-cpf" class="form-control-label">CPF:</label>
            <input type="text" class="form-control" id="ed-cpf" name="txt_novo_cpf" value="<%= cl.getCpf() %>">
          </div>
          <div class="form-group">
            <label for="ed-email" class="form-control-label">Email:</label>
            <input type="text" class="form-control" id="ed-email" name="txt_novo_email" value="<%= cl.getEmail() %>">
          </div>
          <div class="form-group">
            <label for="ed-tel" class="form-control-label">Telefone:</label>
            <input type="text" class="form-control" id="ed-tel" name="txt_novo_tel" value="<%= cl.getTelefone() %>">
          </div>
          <div class="form-group">
            <label for="ed-endereco" class="form-control-label">Endereço:</label>
            <input type="text" class="form-control" id="ed-endereco" name="txt_novo_endereco" value="<%= cl.getEndereço() %>">
          </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" name="ed" class="btn btn-success" value="1">Editar</button>
      </div>
    </form>
      </div>
      
    
    </div>
  </div>
</div>
</div>