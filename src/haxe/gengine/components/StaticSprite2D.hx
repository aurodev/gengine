package gengine.components;

class StaticSprite2D
{
    public var object:Dynamic;

    public function new(?sprite)
    {
        untyped __js__("this.object = new Module.StaticSprite2D(gengineApp.getContext())");
        untyped __js__("window.dummyNode.addComponent(this.object, 0, 0);");

        if(sprite != null)
        {
            setSprite(sprite);
        }
    }

    public function setSprite(sprite:Dynamic)
    {
        untyped __js__("this.object.setSprite(sprite)");
    }
}
