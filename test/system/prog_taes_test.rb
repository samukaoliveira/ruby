require "application_system_test_case"

class ProgTaesTest < ApplicationSystemTestCase
  setup do
    @prog_tae = prog_taes(:one)
  end

  test "visiting the index" do
    visit prog_taes_url
    assert_selector "h1", text: "Prog taes"
  end

  test "should create prog tae" do
    visit prog_taes_url
    click_on "New prog tae"

    fill_in "Anuenio", with: @prog_tae.anuenio
    fill_in "Classe", with: @prog_tae.classe
    fill_in "Fim prog", with: @prog_tae.fim_prog
    fill_in "Inicio prog", with: @prog_tae.inicio_prog
    check "Insalubridade" if @prog_tae.insalubridade
    fill_in "Iq atual", with: @prog_tae.iq_atual
    fill_in "Iq novo", with: @prog_tae.iq_novo
    check "Medico" if @prog_tae.medico
    fill_in "Nivel padrao atual", with: @prog_tae.nivel_padrao_atual
    fill_in "Nivel padrao novo", with: @prog_tae.nivel_padrao_novo
    fill_in "Nome", with: @prog_tae.nome
    fill_in "Portaria", with: @prog_tae.portaria
    fill_in "Siape", with: @prog_tae.siape
    fill_in "Venc basico comp", with: @prog_tae.venc_basico_comp
    click_on "Create Prog tae"

    assert_text "Prog tae was successfully created"
    click_on "Back"
  end

  test "should update Prog tae" do
    visit prog_tae_url(@prog_tae)
    click_on "Edit this prog tae", match: :first

    fill_in "Anuenio", with: @prog_tae.anuenio
    fill_in "Classe", with: @prog_tae.classe
    fill_in "Fim prog", with: @prog_tae.fim_prog
    fill_in "Inicio prog", with: @prog_tae.inicio_prog
    check "Insalubridade" if @prog_tae.insalubridade
    fill_in "Iq atual", with: @prog_tae.iq_atual
    fill_in "Iq novo", with: @prog_tae.iq_novo
    check "Medico" if @prog_tae.medico
    fill_in "Nivel padrao atual", with: @prog_tae.nivel_padrao_atual
    fill_in "Nivel padrao novo", with: @prog_tae.nivel_padrao_novo
    fill_in "Nome", with: @prog_tae.nome
    fill_in "Portaria", with: @prog_tae.portaria
    fill_in "Siape", with: @prog_tae.siape
    fill_in "Venc basico comp", with: @prog_tae.venc_basico_comp
    click_on "Update Prog tae"

    assert_text "Prog tae was successfully updated"
    click_on "Back"
  end

  test "should destroy Prog tae" do
    visit prog_tae_url(@prog_tae)
    click_on "Destroy this prog tae", match: :first

    assert_text "Prog tae was successfully destroyed"
  end
end
