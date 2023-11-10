require "test_helper"

class ProgTaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prog_tae = prog_taes(:one)
  end

  test "should get index" do
    get prog_taes_url
    assert_response :success
  end

  test "should get new" do
    get new_prog_tae_url
    assert_response :success
  end

  test "should create prog_tae" do
    assert_difference("ProgTae.count") do
      post prog_taes_url, params: { prog_tae: { anuenio: @prog_tae.anuenio, classe: @prog_tae.classe, fim_prog: @prog_tae.fim_prog, inicio_prog: @prog_tae.inicio_prog, insalubridade: @prog_tae.insalubridade, iq_atual: @prog_tae.iq_atual, iq_novo: @prog_tae.iq_novo, medico: @prog_tae.medico, nivel_padrao_atual: @prog_tae.nivel_padrao_atual, nivel_padrao_novo: @prog_tae.nivel_padrao_novo, nome: @prog_tae.nome, portaria: @prog_tae.portaria, siape: @prog_tae.siape, venc_basico_comp: @prog_tae.venc_basico_comp } }
    end

    assert_redirected_to prog_tae_url(ProgTae.last)
  end

  test "should show prog_tae" do
    get prog_tae_url(@prog_tae)
    assert_response :success
  end

  test "should get edit" do
    get edit_prog_tae_url(@prog_tae)
    assert_response :success
  end

  test "should update prog_tae" do
    patch prog_tae_url(@prog_tae), params: { prog_tae: { anuenio: @prog_tae.anuenio, classe: @prog_tae.classe, fim_prog: @prog_tae.fim_prog, inicio_prog: @prog_tae.inicio_prog, insalubridade: @prog_tae.insalubridade, iq_atual: @prog_tae.iq_atual, iq_novo: @prog_tae.iq_novo, medico: @prog_tae.medico, nivel_padrao_atual: @prog_tae.nivel_padrao_atual, nivel_padrao_novo: @prog_tae.nivel_padrao_novo, nome: @prog_tae.nome, portaria: @prog_tae.portaria, siape: @prog_tae.siape, venc_basico_comp: @prog_tae.venc_basico_comp } }
    assert_redirected_to prog_tae_url(@prog_tae)
  end

  test "should destroy prog_tae" do
    assert_difference("ProgTae.count", -1) do
      delete prog_tae_url(@prog_tae)
    end

    assert_redirected_to prog_taes_url
  end
end
