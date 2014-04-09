require 'test_helper'

class PinTest < ActiveSupport::TestCase

  test "tiene que tener un nombre" do
    @pin = Pin.new({
      title: '',
      image: 'http://example.com/imagen.png'
    })

    assert !@pin.valid?, "Un pin sin nombre no debe ser valido!"
  end

  test "tiene que tener una imagen" do
    @pin = Pin.new({
      title: 'Un pin increible',
      image: ''
    })

    assert !@pin.valid?, "Un pin sin imagen no debe ser valido!"
  end

  test "tiene que validar" do
    @pin = Pin.new({
      title: 'Un pin increible',
      image: 'http://example.com/imagen.png'
    })

    assert @pin.valid?, "El pin debería ser valido"
  end

end
