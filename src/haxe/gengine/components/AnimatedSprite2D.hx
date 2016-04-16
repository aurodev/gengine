package gengine.components;

import gengine.math.*;

class AnimatedSprite2D
{
    public var object:Dynamic;

    public function new(?animationSet, ?animation, ?loopMode=0)
    {
        untyped __js__("this.object = new Module.AnimatedSprite2D(gengineApp.getContext())");
        untyped __js__("window.dummyNode.addComponent(this.object, 0, 0);");

        if(animationSet != null)
        {
            setAnimationSet(animationSet);

            if(animation != null)
            {
                setAnimation(animation, loopMode);
            }
        }
    }

    public function setAnimationSet(animationSet:Dynamic)
    {
        untyped __js__("this.object.setAnimationSet(animationSet)");
    }


    public function setAnimation(name:String, ?loopMode=0)
    {
        untyped __js__("this.object.setAnimation(name, loopMode)");
    }

    public function setLayer(layer:Int)
    {
        untyped __js__("this.object.setLayer(layer)");
    }

    public function getLayer():Int
    {
        return untyped __js__("this.object.getLayer()");
    }
}